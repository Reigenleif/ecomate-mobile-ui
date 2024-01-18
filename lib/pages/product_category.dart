import 'package:ecomate/provider/marketplace.dart';
import 'package:ecomate/styles/colors.dart';
import 'package:entry/entry.dart';
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

  MarketplaceCategory? currentCategory;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      categoryId = widget.categoryId;
      MarketplaceState marketplaceState = context.read<MarketplaceState>();
      setState(() {
        currentCategory =
            marketplaceState.getMarketplaceCategoryById(categoryId);
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
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => primary)),
                          menuChildren: [
                            for (var category
                                in marketplaceState.marketplaceCategoryList)
                              MenuItemButton(
                                child: Container(
                                  color: surface,
                                  child: Text(category.name ?? ""),
                                ),
                                onPressed: () {
                                  context.push(
                                      "/unshell/product-category/${category.id}");
                                },
                              )
                          ],
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: primary, width: 2),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  Text(currentCategory?.name ?? "Select Category"),
                                  Icon(Icons.arrow_drop_down_outlined)
                                ],
                              ),
                            ),
                          ))
                    ],
                  )),
            
                  // Category content group
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 25),
                    child: marketplaceState.isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : Wrap(
                            spacing: 15,
                            runSpacing: 15,
                            children: offsetAnimationBuilder([
                              for (var item in currentCategory?.itemList ?? [])
                                InkWell(
                                  onTap: () {
                                    context.push("/unshell/product/${item.id}");
                                  },
                                  child: Container(
                                    width: 170,
                                    height: 200,
                            
                                    decoration: BoxDecoration(
                            
                                      color: Theme.of(context).colorScheme.surface,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          blurRadius: 8,
                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                            
                                      child: Column(children: [
                                        Image.network(
                                          item.imageUrl ?? "",
                                          fit: BoxFit.fill,
                                          height: 120,
                                        ),
                                        Text(item.name ?? ""),
                                        Text("Rp. ${item.price ?? ""}"),
                                      ]),
                                    ),
                                  ),
                                )
                            ]),
                          ),
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


List<Widget> offsetAnimationBuilder(List<Widget> widgetList) {
  List<Widget> result = [];
  for (int i = 0; i < widgetList.length; i++) {
    result.add(Entry.offset(
      duration: Duration(milliseconds: 500),
      delay: Duration(milliseconds: 200 * i),
      child: widgetList[i],
    ));
  }
  return result;
}