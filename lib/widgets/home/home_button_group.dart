import 'package:ecomate/styles/colors.dart';
import 'package:ecomate/widgets/common/carbon_calculator_modal.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:entry/entry.dart';

class HomeButtonGroup extends StatelessWidget {
  HomeButtonGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(children: [
        SizedBox(
          width: 350,
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              Entry.offset(
                duration: Duration(milliseconds: 300),
                child: _RoundButton(
                  linkTo: "/unshell/marketplace/",
                  icon: Image.asset('assets/images/home/marketplace.png'),
                  title: "Marketplace",
                ),
              ),
              Entry.offset(
                delay: Duration(milliseconds: 100),
                duration: Duration(milliseconds: 300),
                child: _RoundButton(
                  onPressed: () {
                    showCalculatorDialog(context);
                  },
                  icon: Image(
                      image:
                          AssetImage('assets/images/home/carbonfootprint.png')),
                  title: "Carbon Calculator",
                ),
              ),
              Entry.offset(
                delay: Duration(milliseconds: 200),
                duration: Duration(milliseconds: 300),
                child: _RoundButton(
                  linkTo: "/",
                  icon:
                      Image(image: AssetImage('assets/images/home/forum.png')),
                  title: "Forum",
                ),
              )
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
                Entry.offset(
                    delay: Duration(milliseconds: 300),
                    duration: Duration(milliseconds: 300),
                    child: _RoundButton(
                      linkTo: "/",
                      icon: Image(
                          image: AssetImage('assets/images/home/event.png')),
                      title: "Event",
                    )),
                Entry.offset(
                  delay: Duration(milliseconds: 400),
                  duration: Duration(milliseconds: 300),
                  child: _RoundButton(
                      linkTo: "/",
                      icon: Image(
                          image: AssetImage('assets/images/home/recipe.png')),
                      title: "Recipe"),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class _RoundButton extends StatelessWidget {
  _RoundButton({
    Key? key,
    required this.icon,
    this.linkTo,
    this.onPressed,
    required this.title,
  }) : super(key: key);

  final Widget icon;
  final String? linkTo;
  final String title;
  final VoidCallback? onPressed;

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
            onPressed: onPressed ?? () => context.push(linkTo ?? "/"),
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
