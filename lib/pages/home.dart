import 'package:flutter/material.dart';
import 'package:namer_app/pages/home_nav/marketplace.dart';
import 'package:namer_app/utils/provider/global_navigator.dart';
import 'package:namer_app/widgets/home/home_button_group.dart';
import 'package:namer_app/widgets/home/home_header.dart';
import 'package:provider/provider.dart';

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
    return Consumer<GlobalNavigator>(
        builder: (context, globalNavigator, child) {
      if (globalNavigator.navPages[0] == "home") {
        return Column(children: [
          HomeHeader(onPressed: () => {}),
          Divider(
            height: 20,
            thickness: 0,
          ),
          HomeButtonGroup()
        ]);
      } else if (globalNavigator.navPages[0] == "marketplace") {
        return Marketplace();
      } else {
        return Container();
      }
    });
  }
}
