import 'package:ecomate/widgets/home/home_button_group.dart';
import 'package:ecomate/widgets/home/home_contents.dart';
import 'package:ecomate/widgets/home/home_header.dart';
import 'package:ecomate/widgets/home/home_headline.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  ActivityPage({Key? key}) : super(key: key);

  final String name = 'Flutter';

  @override
  createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  String name = '';

  onPressed() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              Text("Your Activities :",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ]),
          ),
        ),
        
      ],
    );
  }
}

class ActivityyRow extends StatefulWidget {
  ActivityyRow({
    Key? key,
    this.isDone = false,
    this.activityName = "",
  }) : super(key: key);

  bool isDone;
  String activityName = "";

  @override
  _ActivityyRowState createState() => _ActivityyRowState();
}

class _ActivityyRowState extends State<ActivityyRow> {
  bool isDone = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        isDone = widget.isDone;
      });
    });
  }

  toggleState() {
    setState(() {
      isDone = !isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        toggleState();
      },
      child: Container(
          width: 268,
          height: 31,
          decoration: ShapeDecoration(
            color: Color(0xFF48645C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 34,
                height: 30.48,
                padding: const EdgeInsets.all(2.34),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(58.62),
                  ),
                ),
                child: isDone
                    ? Icon(Icons.check)
                    : Icon(Icons.check_box_outline_blank),
              ),
              Text(
                widget.activityName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          )),
    );
  }
}
