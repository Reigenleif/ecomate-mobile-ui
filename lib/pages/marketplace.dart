import 'package:ecomate/provider/auth.dart';
import 'package:ecomate/provider/marketplace.dart';
import 'package:ecomate/widgets/common/custom_form/string_input.dart';
import 'package:ecomate/widgets/common/round_button.dart';
import 'package:entry/entry.dart';
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
      // Auth auth = context.read<Auth>();

      MarketplaceState marketplaceState = context.read<MarketplaceState>();
      marketplaceState.getMarketplaceItems().then((v) => print("AS"));
      marketplaceState.getRecommendedMarketplaceItem();

      // auth.checkAuth(context);
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
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  // Searchbar Group
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
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
                                    onPressed: () =>
                                        {context.push("/unshell/cart")},
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

                  // Lazyable part
                  marketplaceState.isLoading
                      ? Container(
                          child: CircularProgressIndicator(),
                        )
                      : Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Wrap(
                                  alignment: WrapAlignment.spaceAround,
                                  spacing: 20,
                                  runSpacing: 20,
                                  children: [
                                    for (var category in marketplaceState
                                        .marketplaceCategoryList)
                                      Entry(
                                          child: RoundButton(
                                              icon: Image.network(
                                                  category.imageUrl ?? ""),
                                              linkTo:
                                                  "/unshell/product-category/${category.id}",
                                              title: category.name ?? "")),
                                  ],
                                )),
                            marketplaceState.isRandomMarketplaceItemListLoading
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : Container(
                                    padding: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.surface,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 8,
                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Recommended for you",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            children: [
                                              SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(children: [
                                                  for (var item in marketplaceState
                                                      .recommendedMarketplaceItemList)
                                                    Entry.opacity(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Container(
                                                          height: 200,
                                                          width: 150,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primary,
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            child: InkWell(
                                                              onTap: () =>
                                                                  context.push(
                                                                      "/unshell/product/${item.id}"),
                                                              child: Wrap(
                                                                  direction: Axis
                                                                      .vertical,
                                                                  children: [
                                                                    Image(
                                                                      image: NetworkImage(
                                                                          item.imageUrl ??
                                                                              ""),
                                                                      width:
                                                                          150,
                                                                      height:
                                                                          150,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          8.0),
                                                                      child:
                                                                          Text(
                                                                        item.name ??
                                                                            "",
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Colors.white),
                                                                      ),
                                                                    ),
                                                                  ]),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                ]),
                                              ),
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
          ],
        ),
      );
    });
  }
}
