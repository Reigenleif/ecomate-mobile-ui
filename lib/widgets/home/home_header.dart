import 'package:flutter/material.dart';
import 'package:namer_app/styles/colors.dart';
import 'package:namer_app/widgets/common/custom_card.dart';

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
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Jakarta, 20 Sunny"),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text("AQI 50"),
          ),
        ],
      ),
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
