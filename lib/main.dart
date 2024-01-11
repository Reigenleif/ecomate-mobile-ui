import 'package:flutter/material.dart';
import 'package:namer_app/pages/home.dart';
import 'package:namer_app/pages/profile.dart';
import 'package:namer_app/styles/colors.dart';
import 'package:namer_app/styles/texts.dart';
import 'package:namer_app/widgets/common/not_found.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: colors,
          textTheme: texts,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  String current = "";
  int _selectedIndex = 0;

  void onSelectEmoji(String emoji) {
    current = emoji;
    notifyListeners();
  }

  void onChangeIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    List<Widget> pages = [HomePage(), NotFound(), NotFound(), ProfilePage()];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Emoji Selector",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: pages.elementAt(appState._selectedIndex),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: primaryContainer,
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'News',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: appState._selectedIndex,
            unselectedItemColor: onPrimaryContainer,
            selectedItemColor: onPrimaryContainer,
            onTap: appState.onChangeIndex,
          )),
    );
  }
}
