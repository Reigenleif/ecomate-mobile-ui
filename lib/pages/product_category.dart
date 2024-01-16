import 'package:ecomate/provider/marketplace.dart';
import 'package:ecomate/styles/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ProductCategory extends StatefulWidget {
  ProductCategory({Key? key, required this.categoryId}) : super(key: key);

  final String categoryId;

  @override
  createState() => _ProductState();
}

class _ProductState extends State<ProductCategory> {
  String categoryId = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      MarketplaceState marketplaceState = context.read<MarketplaceState>();
      marketplaceState.getMarketplaceItemListByCategoryId(categoryId);
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
                    MaterialStateColor.resolveWith((states) => Colors.white)),
          ),
          centerTitle: true,
          title: Text("EcoShop",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.topRight,
                begin: Alignment.bottomLeft,
                colors: [
                  Color(0xFF005244),
                  Color(0xFF287867),
                  Color(0xFFCCEAE0)
                ],
              ),
            ),
          ),
        ),
        body: Expanded(
          child: SingleChildScrollView(
              child: Column(
            children: [
              // Searchbar Group
              Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Theme.of(context).colorScheme.surface,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 8,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search_outlined),
                          Container(
                            width: 120,
                            child: TextFormField(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                              decoration: InputDecoration(
                                hintText: "Search",
                                border: InputBorder.none,
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 12),
                                hintStyle: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.shopping_cart_outlined),
                            onPressed: () => {},
                          ),
                          IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.chat_outlined),
                            onPressed: () => {},
                          ),
                          IconButton(
                            iconSize: 30,
                            icon: Icon(Icons.filter_list_outlined),
                            onPressed: () => {},
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),

              // Category navigator
              Center(
                  child: MenuBar(
                children: [
                  SubmenuButton(
                      menuChildren: [
                        for (var category
                            in marketplaceState.marketplaceCategoryList)
                          MenuItemButton(
                            child: Container(color: surface),
                            onPressed: () {
                              context.go(
                                  "/unshell/product-category/${category.id}");
                            },
                          )
                      ],
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: primary, width: 2),
                          color: Colors.transparent,
                        ),
                        child: const Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            Text("CATEGORY"),
                            Icon(Icons.arrow_drop_down_outlined)
                          ],
                        ),
                      ))
                ],
              )),

              // Category content group
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    for (var item
                        in marketplaceState.currentSelectedCategoryItemList)
                      SizedBox(
                        width: 170,
                        height: 200,
                        child: Column(children: [
                          Image.network(
                            item.imageUrl ?? "",
                            fit: BoxFit.fill,
                          ),
                          Text(item.name ?? ""),
                          Text("Rp. ${item.price ?? ""}"),
                        ]),
                      )
                  ],
                ),
              )
            ],
          )),
        ),
      );
    });
  }
}
