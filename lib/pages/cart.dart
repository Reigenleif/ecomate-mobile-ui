import 'package:ecomate/provider/marketplace.dart';
import 'package:ecomate/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  createState() => _CartState();
}

class _CartState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      MarketplaceState marketplaceState = context.read<MarketplaceState>();
      marketplaceState.getCartItemList();
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
          title: Text("Checkout Cart",
              style: TextStyle(
                  fontSize: 24,
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
        body: marketplaceState.isCartLoading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        // Purchased item group
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.black, width: 2),
                                      bottom: BorderSide(
                                          color: Colors.black, width: 2))),
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: Text(
                                      "Purchased Items :",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      for (var item in marketplaceState
                                          .cart!.cartItemList!)
                                        Container(
                                          height: 120,
                                          width: double.maxFinite,
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 20),
                                          child: Wrap(
                                            spacing: 20,
                                            alignment:
                                                WrapAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: Image.network(
                                                  item.marketplaceItem!
                                                      .imageUrl!,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 220,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      item.marketplaceItem!
                                                          .name!,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      "Rp. " +
                                                          item.marketplaceItem!
                                                              .price
                                                              .toString(),
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        height:
                                                            double.maxFinite,
                                                        width: double.maxFinite,
                                                        child: Wrap(
                                                          alignment:
                                                              WrapAlignment.end,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .center,
                                                          spacing: 10,
                                                          children: [
                                                            IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon:
                                                                    Text("-")),
                                                            Text(item.quantity
                                                                .toString()),
                                                            IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon:
                                                                    Text("+")),
                                                          ],
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ],
                                  )
                                ],
                              )),
                        ),

                        // Delivery Address Group
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(),
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: Text(
                                      "Delivery Address :",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(children: [
                                        Icon(Icons.location_on_outlined),
                                        Expanded(
                                            child: Container(
                                          padding: EdgeInsets.only(left: 20),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                hintText: "Address"),
                                          ),
                                        ))
                                      ]),
                                    ),
                                  ),
                                ],
                              )),
                        ),

                        // Payment Detail Group
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Colors.black, width: 2),
                                  top: BorderSide(
                                      color: Colors.black, width: 2))),
                          child: Column(
                            children: [
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Text(
                                  "Payment Detail :",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Row(
                                  children: [
                                    Text("Total :"),
                                    Expanded(
                                      child: Text(
                                        "Rp. " +
                                            marketplaceState
                                                .calculateTotalItemPrice()
                                                .toString(),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Row(
                                  children: [
                                    Text("Delivery Fee :"),
                                    Expanded(
                                      child: Text(
                                        "Rp. 10000",
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Row(
                                  children: [
                                    Text("Total Payment :"),
                                    Expanded(
                                      child: Text(
                                        "Rp. ".toString(),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.black, width: 2),
                  bottom: BorderSide(color: Colors.black, width: 2))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 20,
              children: [
                Container(
                    width: 150,
                    child: marketplaceState.isCartLoading
                        ? Center(child: CircularProgressIndicator())
                        : Text("Total : Rp. " +
                            (marketplaceState.calculateTotalItemPrice() + 10000)
                                .toString())),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color(0xFFF7FAF7),
                            
                            content: ConfirmModal(),
                          );
                        });
                  },
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: Offset(0, 5),
                        )
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          spacing: 20,
                          children: [
                            Icon(
                              Icons.payment_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "Pay",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class ConfirmModal extends StatelessWidget {
  const ConfirmModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MarketplaceState>(
        builder: (context, marketplaceState, child) {
      return Container(
        child: Column(children: [
          Text("Are you sure you want to checkout?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("no")),
              TextButton(
                  onPressed: () {
                    marketplaceState.confirmPayment(context);
                    Navigator.pop(context);
                  },
                  child: Text("Yes")),
            ],
          )
        ]),
      );
    });
  }
}
