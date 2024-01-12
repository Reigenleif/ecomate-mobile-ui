import 'package:flutter/material.dart';

class CustomCard extends Container {
  CustomCard(
      {Key? key,
      required Widget child,
      this.height,
      this.width,
      this.decoration,
      this.padding})
      : super(key: key, child: child);

  final double? height;
  final double? width;
  

  @override
  final Decoration? decoration;

  @override 
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? height,
      width: width ?? width,
      decoration: decoration ??
          BoxDecoration(
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
      padding: padding ?? const EdgeInsets.all(12),
      child: child,
    );
  }
}
