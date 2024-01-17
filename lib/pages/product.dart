import 'package:ecomate/provider/marketplace.dart';
import 'package:ecomate/styles/colors.dart';
import 'package:ecomate/utils/enforce_auth.dart';
import 'package:ecomate/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key, required this.productId}) : super(key: key);

  final String productId;

  @override
  State<ProductPage> createState() => _ProductState();
}

class _ProductState extends State<ProductPage> {
  MarketplaceItem? item;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      MarketplaceState marketplaceState = context.read<MarketplaceState>();
      marketplaceState.getMarketplaceItemById(widget.productId).then((value) {
        setState(() {
          item = value;
          isLoading = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MarketplaceState>(
        builder: (context, marketplaceState, child) {
      return Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: context.pop,
              style: ButtonStyle(
                  iconColor:
                      MaterialStateColor.resolveWith((states) => primary)),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    context.push('/marketplace/cart');
                  },
                  iconSize: 25,
                  icon: Icon(Icons.shopping_cart_outlined))
            ],
            centerTitle: true,
            forceMaterialTransparency: true,
          ),
          body: isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                  children: [
                    FadeInImage(
                      placeholder: AssetImage("assets/images/placeholder.jpg"),
                      image: NetworkImage(
                        item!.imageUrl ?? "",
                      ),
                      fit: BoxFit.fill,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: primaryContainer,
                        border: Border(
                          bottom: BorderSide(color: primary, width: 1),
                          top: BorderSide(color: primary, width: 1),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 20),
                            width: double.maxFinite,
                            child: Text(
                              item!.name!,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            width: double.maxFinite,
                            child: Text(
                              "Rp. ${item!.price!.toString()} per kg",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Container(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        decoration: BoxDecoration(
                          color: surface,
                          border: Border(
                            bottom: BorderSide(color: primary, width: 1),
                            top: BorderSide(color: primary, width: 1),
                          ),
                        ),
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Text(
                              "Description",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(item!.description ?? ""),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))),
          bottomNavigationBar: Container(
            color: primaryContainer,
            padding: EdgeInsets.all(10),
            height: 80,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              children: [
                InkWell(
                    onTap: () {
                      enforceAuth(context, () {
                        marketplaceState
                            .addItemToCart(widget.productId)
                            .then((v) {
                          toastSuccess(context, "Successfully Added to Cart!");
                          context.push('/unshell/cart');
                        });
                      });
                    },
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: primary, width: 1),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              color: primary,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                InkWell(
                    onTap: () {
                      enforceAuth(context, () {
                        marketplaceState
                            .addItemToCart(widget.productId)
                            .then((v) {
                          toastSuccess(context, "Successfully Added to Cart!");
                        });
                      });
                    },
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: primary, width: 1),
                          color: primary),
                      child: Center(
                        child: Wrap(
                          spacing: 10,
                          children: [
                            Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "Cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ));
    });
  }
}
