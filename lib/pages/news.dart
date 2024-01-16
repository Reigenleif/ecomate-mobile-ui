import 'package:ecomate/provider/news.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsItemList = [];
  bool isLoading = true;

  @override
  void initState() {
    NewsState news = context.read<NewsState>();

    news.queryNewsList().then((value) => setState(() {
          newsItemList = news.newsItemList;
        }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<NewsItem> cardedItems = [];
    List<NewsItem> uncardedItems = [];

    for (var i = 0; i < newsItemList.length; i++) {
      if (i < 2) {
        cardedItems.add(newsItemList[i]);
      } else {
        uncardedItems.add(newsItemList[i]);
      }
    }

    if (newsItemList.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.maxFinite,
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
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
                child: const Column(
                  children: [
                    SizedBox(
                        width: double.maxFinite,
                        child: Text("EcoNews",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center)),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: SizedBox(
                        width: 400,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                                width: 300,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    border: InputBorder.none,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  for (var item in cardedItems)
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Container(
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).colorScheme.surface,
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
                              Image.network(item.imageUrl),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(
                                      item.title,
                                      maxLines: 2,
                                      softWrap: true,
                                    ),
                                    Text(
                                      item.content,
                                      maxLines: 5,
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  Container(
                    height: 20,
                  ),
                  for (var item in uncardedItems)
                    Column(
                      children: [
                        Divider(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                                width: 75,
                                height: 80,
                                child: Image.network(item.imageUrl)),
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    child: Text(
                                      "EcoMate",
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    child: Text(
                                      item.title,
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
