import 'package:ecomate/pages/home.dart';
import 'package:ecomate/pages/marketplace.dart';
import 'package:ecomate/pages/news.dart';
import 'package:ecomate/pages/product_category.dart';
import 'package:ecomate/pages/profile.dart';
import 'package:ecomate/provider/auth.dart';
import 'package:ecomate/provider/marketplace.dart';
import 'package:ecomate/provider/news.dart';
import 'package:ecomate/services/auth.dart';
import 'package:ecomate/services/marketplace.dart';
import 'package:ecomate/services/news.dart';
import 'package:ecomate/styles/colors.dart';
import 'package:ecomate/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  AuthService().init();
  MarketplaceService().init();
  NewsService().init();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Auth()),
    ChangeNotifierProvider(create: (context) => MarketplaceState()),
    ChangeNotifierProvider(create: (context) => NewsState()),
  ], child: MainApp()));
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
        path: "/unshell",
        builder: (context, state) => Container(),
        routes: [
          ShellRoute(
              routes: [
                GoRoute(
                    path: "marketplace",
                    builder: (context, state) => Marketplace()),
                GoRoute(
                    path: "register", builder: (context, state) => Container()),
                GoRoute(
                    path: "product-category/:id",
                    builder: (context, state) => ProductCategory(
                          categoryId: state.pathParameters['id'] ?? "",
                        )),
                GoRoute(
                    path: "product/:id",
                    builder: (context, state) => ProductCategory(
                          categoryId: state.pathParameters['id'] ?? "",
                        )),
              ],
              builder: (context, state, child) {
                return Scaffold(
                  body: child,
                );
              })
        ]),
    GoRoute(
      path: "/shell",
      builder: (context, state) => Container(),
      routes: [
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            routes: [
              GoRoute(path: 'home', builder: (context, state) => HomePage()),
              GoRoute(
                path: 'news',
                builder: (context, state) => NewsPage(),
              ),
              GoRoute(
                path: 'profile',
                builder: (context, state) => ProfilePage(),
              ),
              // // GoRoute(
              // //   path: '/marketplace',
              // //   builder: (context, state) => Marketplace(),
              // // ),
            ],
            builder: (context, state, child) {
              return MyAppWrapper(child: child);
            }),
      ],
    ),
  ],
  // debugLogDiagnostics: true,
  initialLocation: '/shell/home',
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colors,
        textTheme: texts,
      ),
    );
  }
}

class _MyAppWrapperState extends State<MyAppWrapper> {
  _MyAppWrapperState();

  int _selectedIndex = 0;
  final List<String> _pages = [
    '/shell/home',
    '/shell/news',
    '/shell/activity',
    '/shell/profile'
  ];

  void Function(int) _onItemTapped(BuildContext context) => (int index) {
        setState(() {
          _selectedIndex = index;
          context.go(_pages[index]);
        });
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
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
            currentIndex: _selectedIndex,
            unselectedItemColor: onPrimaryContainer,
            selectedItemColor: onPrimaryContainer,
            onTap: _onItemTapped(context),
          )),
    );
  }
}

class MyAppWrapper extends StatefulWidget {
  const MyAppWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  createState() => _MyAppWrapperState();
}
