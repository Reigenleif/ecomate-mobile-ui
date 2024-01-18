import 'package:ecomate/widgets/home/home_button_group.dart';
import 'package:ecomate/widgets/home/home_contents.dart';
import 'package:ecomate/widgets/home/home_header.dart';
import 'package:ecomate/widgets/home/home_headline.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final String name = 'Flutter';

  @override
  createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  String name = '';

  onPressed() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              HomeHeadline(),
              HomeButtonGroup(),
              HomeHeader(onPressed: () => {}),
              HomeContents(),
            ]),
          ),
        ),
      ],
    );
  }
}
