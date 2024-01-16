import 'package:ecomate/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeButtonGroup extends StatelessWidget {
  HomeButtonGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 350,
        child: Wrap(
          alignment: WrapAlignment.spaceAround,
          children: [
            _RoundButton(
              linkTo: "/unshell/marketplace/",
              icon: Image.asset('assets/images/home/marketplace.png'),
              title: "Marketplace",
            ),
            _RoundButton(
              linkTo: "marketplace",
              icon: Image(
                  image: AssetImage('assets/images/home/carbonfootprint.png')),
              title: "Carbon Calculator",
            ),
            _RoundButton(
              linkTo: "marketplace",
              icon: Image(image: AssetImage('assets/images/home/forum.png')),
              title: "Forum",
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SizedBox(
          width: 280,
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              _RoundButton(
                linkTo: "marketplace",
                icon: Image(image: AssetImage('assets/images/home/event.png')),
                title: "Event",
              ),
              _RoundButton(
                  linkTo: "marketplace",
                  icon: Image(image: AssetImage('assets/images/home/recipe.png')),
                  title: "Recipe"),
            ],
          ),
        ),
      )
    ]);
  }
}

class _RoundButton extends StatelessWidget {
  _RoundButton({
    Key? key,
    required this.icon,
    required this.linkTo,
    required this.title,
  }) : super(key: key);

  final Widget icon;
  final String linkTo;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: IconButton(
            iconSize: 70,
            onPressed: () => context.push(linkTo),
            icon: icon,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return primaryContainer;
              } else {
                return primaryContainer;
              }
            }), shadowColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return primaryContainer;
              } else {
                return primary;
              }
            }), fixedSize: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Size(80, 80);
              }
              return Size(70, 70);
            }))),
      ),
      SizedBox(
        width: 100,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
                    title,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
          ))
    ]);
  }
}
