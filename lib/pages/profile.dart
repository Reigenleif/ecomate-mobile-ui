import 'package:ecomate/provider/auth.dart';
import 'package:ecomate/widgets/common/custom_form/string_input.dart';
import 'package:ecomate/widgets/common/modal/custom_modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  final String name = 'Flutter';

  @override
  createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _nameInput = "";
  String _emailInput = "";

  void onChangeName(String? value) {
    setState(() {
      _nameInput = value ?? "";
    });
  }

  void onChangeEmail(String? value) {
    setState(() {
      _emailInput = value ?? "";
    });
  }

  @override
  void initState() {
    super.initState();
    Auth auth = context.read<Auth>();
    Future.delayed(Duration.zero, () => auth.checkAuth(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile Page')),
        body: Column(
          children: [
            Text(
              "Name: $_nameInput",
              style: TextStyle(),
              textAlign: TextAlign.left,
              textWidthBasis: TextWidthBasis.longestLine,
            ),
            Text("Email: $_emailInput"),
            ButtonBar(
              children: [
                ElevatedButton(
                    onPressed: () => CustomModal.triggerBottomModal(
                        context,
                        Column(
                          children: [
                            Text("Edit Profile"),
                            StringInput(
                                label: "Your Name",
                                value: _nameInput,
                                onChange: onChangeName),
                            StringInput(
                                label: "Your Email",
                                value: _emailInput,
                                onChange: onChangeEmail),
                          ],
                        )),
                    child: Text("Edit Profile"))
              ],
            )
          ],
        ));
  }
}
