import 'package:ecomate/provider/auth.dart';
import 'package:ecomate/utils/toast.dart';
import 'package:ecomate/widgets/common/custom_form/string_input.dart';
import 'package:ecomate/widgets/common/modal/custom_modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _nameInput = "";
  String _emailInput = "";
  String _passwordInput = "";

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

  void onChangePassword(String? value) {
    setState(() {
      _passwordInput = value ?? "";
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
    return Consumer<Auth>(builder: (context, authState, child) {
      return Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 156,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              end: Alignment(0.95, 0.31),
              begin: Alignment(-0.95, -0.31),
              colors: [Color(0xFF005244), Color(0xFF287867), Color(0xFFCCEAE0)],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () => showEditProfileModal(context),
                    child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Icon(Icons.edit_outlined),
                        )),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    child: Text(authState.getUserInfo()?.name ?? "Anonymous",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    width: 150,
                    child: Text(authState.getUserInfo()?.email ?? "",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        textAlign: TextAlign.left),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Profile Body
        Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              Text("Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(">")
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Transaction History", style: TextStyle(fontSize: 18)),
                      Text(">")
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Methods", style: TextStyle(fontSize: 18)),
                      Text(">")
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black, width: 1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Daily Tracker", style: TextStyle(fontSize: 18)),
                      Text(">")
                    ],
                  )),
            ],
          ),
        )
      ]);
    });
  }
}

void showEditProfileModal(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return EditProfileModal();
      });
}

class EditProfileModal extends StatefulWidget {
  const EditProfileModal({Key? key}) : super(key: key);

  @override
  createState() => _EditProfileModalState();
}

class _EditProfileModalState extends State<EditProfileModal> {
  String _nameInput = "";
  String _emailInput = "";
  String _passwordInput = "";
  String _confirmPasswordInput = "";

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

  void onChangePassword(String? value) {
    setState(() {
      _passwordInput = value ?? "";
    });
  }

  void onChangeConfirmPassword(String? value) {
    setState(() {
      _confirmPasswordInput = value ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Auth>(builder: (context, authState, child) {
      return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            Text("Sign Up",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
              width: double.maxFinite,
              child: Text(
                "Email",
                textAlign: TextAlign.left,
              ),
            ),
            StringInput(
              label: "Email",
              value: _emailInput,
              onChange: onChangeEmail,
              isAnEmail: true,
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: double.maxFinite,
              child: Text(
                "Password",
                textAlign: TextAlign.left,
              ),
            ),
            StringInput(
                label: "Password",
                value: _passwordInput,
                onChange: onChangePassword,
                obscureText: true),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: double.maxFinite,
              child: Text(
                "Retype Password",
                textAlign: TextAlign.left,
              ),
            ),
            StringInput(
                label: "Confirm Password",
                value: _confirmPasswordInput,
                onChange: onChangeConfirmPassword,
                obscureText: true),
            ButtonBar(
              children: [
                ElevatedButton(
                    onPressed: () => authState
                            .updateSelfUserInfo(UpdateUserPayload(
                                name: _nameInput,
                                email: _emailInput,
                                password: _passwordInput))
                            .then((value) {
                          Navigator.pop(context);
                          toastSuccess(context, "Sign Up Success");
                        }),
                    child: Text("Update"))
              ],
            )
          ]));
    });
  }
}
