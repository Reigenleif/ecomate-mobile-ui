import 'package:flutter/material.dart';

class RoundButton extends ButtonBar {
  RoundButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
          color: Color(0xFF005244),
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [child],
            mainAxisSize: MainAxisSize.min));
  }
}
