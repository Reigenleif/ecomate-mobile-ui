import 'package:ecomate/styles/colors.dart';
import 'package:ecomate/widgets/common/custom_card.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  HomeHeader({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback onPressed;

  @override
  createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: CustomCard(
              height: 175,
              padding: EdgeInsets.all(0),
              width: 350,
              child: Column(
                children: [HeaderTopPart(), HeaderBottomPart()],
              ))),
    );
  }
}

class HeaderTopPart extends StatelessWidget {
  const HeaderTopPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 120,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      child: Container(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(children: [
                      Text("Jakarta",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: onPrimary, fontSize: 20)),
                      Text("20°",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: onPrimary, fontSize: 20)),
                    ])),
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(children: [
                      Text("150",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: onPrimary, fontSize: 24)),
                      Text("AQI US°",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: onPrimary, fontSize: 16)),
                      Text("Unhealthy",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: onPrimary, fontSize: 24)),
                    ])),
              ),
            ],
          )),
    );
  }
}

class HeaderBottomPart extends StatelessWidget {
  const HeaderBottomPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        height: 40,
        decoration: BoxDecoration(
          color: primaryContainer,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
        child: Center(
            child: Text(
          "More AQI Information →",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: primary, fontSize: 18),
        )));
  }
}
