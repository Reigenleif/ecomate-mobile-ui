import 'package:flutter/material.dart';
import 'package:namer_app/styles/colors.dart';
import 'package:namer_app/utils/provider/global_navigator.dart';
import 'package:namer_app/widgets/common/gradient_shader.dart';
import 'package:provider/provider.dart';

class HomeButtonGroup extends StatelessWidget {
  HomeButtonGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ButtonBar(
        buttonPadding: EdgeInsets.all(20),
        alignment: MainAxisAlignment.center,
        children: [
          _RoundButton(
            linkTo: "marketplace",
            icon: Icon(Icons.shopping_cart),
          ),
          _RoundButton(
            linkTo: "marketplace",
            icon: Icon(Icons.calculate_outlined),
          ),
          _RoundButton(
            linkTo: "marketplace",
            icon: Icon(Icons.people_outline),
          ),
        ],
      ),
      ButtonBar(
        buttonPadding: EdgeInsets.all(20),
        alignment: MainAxisAlignment.center,
        children: [
          _RoundButton(
            linkTo: "marketplace",
            icon: Icon(Icons.event),
          ),
          _RoundButton(
            linkTo: "marketplace",
            icon: Icon(Icons.food_bank_outlined),
          ),
        ],
      )
    ]);
  }
}

class _RoundButton extends StatelessWidget {
  _RoundButton({
    Key? key,
    required this.icon,
    required this.linkTo,
  }) : super(key: key);

  final Widget icon;
  final String linkTo;

  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalNavigator>(
      builder: (context, value, child) => IconButton(
          iconSize: 70,
          onPressed: () => value.changePage(0, linkTo),
          icon: GradientShader(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF7F93A3), Color(0xFFFFFFFF)]),
            child: icon,
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return primaryContainer;
              } else {
                return primary;
              }
            }),
            shadowColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return primaryContainer;
              } else {
                return primary;
              }
            }),
          )),
    );
  }
}
