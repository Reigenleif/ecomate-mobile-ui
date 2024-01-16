import 'package:ecomate/provider/auth.dart';
import 'package:ecomate/provider/marketplace.dart';
import 'package:ecomate/widgets/common/custom_form/string_input.dart';
import 'package:ecomate/widgets/common/round_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class Marketplace extends StatefulWidget {
  Marketplace({Key? key}) : super(key: key);

  @override
  createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  String searchInput = "";

  void onChangeSearch(String? value) {
    setState(() {
      searchInput = value ?? "";
    });
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Auth auth = context.read<Auth>();

      MarketplaceState marketplaceState = context.read<MarketplaceState>();
      marketplaceState.getMarketplaceItems();

      auth.checkAuth(context);
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

              // Header
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Image.asset(
                  "assets/images/marketplace_banner.png",
                  width: double.maxFinite,
                ),
              ),

              // Categories
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Wrap(
                    alignment: WrapAlignment.spaceAround,
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      for (var category
                          in marketplaceState.marketplaceCategoryList)
                        RoundButton(
                            icon: Image.network(category.imageUrl ?? ""),
                            linkTo: "/unshell/product-category/${category.id}",
                            title: category.name ?? "")
                    ],
                  ))
            ],
          )),
        ),
      );
    });
  }
}
