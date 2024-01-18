import 'package:ecomate/provider/flashcard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeContents extends StatefulWidget {
  HomeContents({Key? key}) : super(key: key);

  @override
  createState() => _HomeContentsState();
}

class _HomeContentsState extends State<HomeContents> {
  // TODO Add backend connection
  List<String> challenges = ["Challenge 1", "Challenge 2", "Challenge 3"];
  List<bool> completed = [false, false, false];

  @override
  initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      FlashcardState flashcardState = context.read<FlashcardState>();
      flashcardState.queryFlashcardList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashcardState>(builder: (context, flashcardState, child) {
      return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFFCCEAE0), Color(0xFFFFFFFF)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "0 %",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Challenge Progress",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
              )),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Want to Impact More ?",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
                child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Color(0xFFF7FAF7),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Close"),
                            ),
                          ],
                          content: FlashcardModal(
                              flashcardItem:
                                  flashcardState.getRandomFlashcardItem()),
                        );
                      });
                },
                child: Container(
                  width: 246,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Color(0xFF005244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                      child: Text(
                    "See EcoTips for Today!",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ))
          ],
        ),
      );
    });
  }
}

class FlashcardModal extends StatelessWidget {
  FlashcardModal({Key? key, required this.flashcardItem}) : super(key: key);

  final FlashcardItem flashcardItem;

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashcardState>(builder: (context, flashcardState, child) {
      if (flashcardState.isLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      }

      return Container(
        height: 350,
        child: Column(
          children: [
            Text(
              "EcoTips",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: ShapeDecoration(
                color: Color(0xFFDAE5E0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF6F7975)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  Image.network(
                    flashcardItem.imageUrl,
                    height: 150,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      flashcardItem.title,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      flashcardItem.content,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
