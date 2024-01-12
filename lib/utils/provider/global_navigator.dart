import 'package:flutter/material.dart';

class GlobalNavigator extends ChangeNotifier {

  List<String> navPages = [
    "home",
  ];
  
  void changePage(int index, String page) {
    navPages[index] = page;
    notifyListeners();
  }

}
