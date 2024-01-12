import 'package:flutter/material.dart';
import 'package:namer_app/widgets/home/emoji_list.dart';
import 'package:namer_app/widgets/home/home_header.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final String name = 'Flutter';

  @override
  createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HomeHeader(onPressed: () => {}),
    ]);
  }
}
