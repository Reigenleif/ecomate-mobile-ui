import 'package:flutter/material.dart';

class HomeHeadline extends StatelessWidget {
  const HomeHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.topRight,
            begin: Alignment.bottomLeft,
            colors: [Color(0xFF005244), Color(0xFF287867), Color(0xFFCCEAE0)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
                width: double.maxFinite,
                child: Text("Hi Amir!",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.left)),
            SizedBox(
                width: double.maxFinite,
                child: Text("Have you done ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white))),
            SizedBox(
                width: double.maxFinite,
                child: Text("something good to earth today?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white))),
          ],
        ));
  }
}
