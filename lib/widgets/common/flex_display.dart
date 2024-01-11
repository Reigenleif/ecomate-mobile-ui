import 'package:flutter/material.dart';

class FlexDisplay extends StatelessWidget {
  const FlexDisplay({Key? key, required this.children})
      : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: children.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150, crossAxisSpacing: 10, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return children[index];
        });
  }
}
