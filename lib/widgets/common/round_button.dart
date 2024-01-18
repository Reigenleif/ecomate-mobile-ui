import 'package:ecomate/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoundButton extends StatelessWidget {
  RoundButton({
    Key? key,
    required this.icon,
    required this.linkTo,
    required this.title,
  }) : super(key: key);

  final Widget icon;
  final String linkTo;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: IconButton(
            iconSize: 70,
            onPressed: () => context.push(linkTo),
            icon: icon,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return primary;
              } else {
                return primaryContainer;
              }
            }), shadowColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return primaryContainer;
              } else {
                return primary;
              }
            }), fixedSize: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Size(80, 80);
              }
              return Size(70, 70);
            }))),
      ),
      SizedBox(
        width: 100,
          child: Text(
        title,
        style: TextStyle(fontSize: 15, color: Colors.black),
        maxLines: 2,
        overflow: TextOverflow.clip,
        textAlign: TextAlign.center,
      ))
    ]);
  }
}
