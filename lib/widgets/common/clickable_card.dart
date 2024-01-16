import 'package:ecomate/widgets/common/custom_card.dart';
import 'package:flutter/material.dart';

class ClickableCard extends CustomCard {
  ClickableCard({Key? key, required Widget child, required this.onPressed})
      : super(key: key, child: child);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: super.build(context),
    );
  }
}
