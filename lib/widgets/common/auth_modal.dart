import 'package:ecomate/provider/auth.dart';
import 'package:ecomate/widgets/common/custom_form/string_input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showAuthModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      width: double.maxFinite,
      height: 500,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: AuthModal()),
  );
}

class AuthModal extends StatefulWidget {
  AuthModal({Key? key}) : super(key: key);

  @override
  createState() => _AuthModalState();
}

class _AuthModalState extends State<AuthModal> {
  String _localNav = "CHOOSE";

  String emailInput = "";
  String passwordInput = "";
  String confirmPasswordInput = "";

  late Auth auth;

  @override
  void initState() {
    auth = context.read<Auth>();
    super.initState();
  }

  void onChangeEmail(String? value) {
    setState(() {
      emailInput = value ?? "";
    });
  }

  void onChangePassword(String? value) {
    setState(() {
      passwordInput = value ?? "";
    });
  }

  void onChangeConfirmPassword(String? value) {
    setState(() {
      confirmPasswordInput = value ?? "";
    });
  }

  void Function() _onTap(String nav) => () {
        setState(() {
          _localNav = nav;
        });
      };

  @override
  Widget build(BuildContext context) {
    if (_localNav == "CHOOSE") {
      return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            TextButton(
              onPressed: _onTap("SIGN_IN"),
              child: Text("Sign In"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            TextButton(
              onPressed: _onTap("SIGN_UP"),
              child: Text("Sign Up"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.onPrimary),
              ),
            ),
          ]));
    }

    if (_localNav == "SIGN_IN") {
      return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            TextButton(
              onPressed: _onTap("CHOOSE"),
              child: Text("Back"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            Text("Sign In"),
            StringInput(
              label: "Email",
              value: emailInput,
              onChange: onChangeEmail,
              isAnEmail: true,
            ),
            StringInput(
                label: "Password",
                value: passwordInput,
                onChange: onChangePassword,
                obscureText: true),
            ButtonBar(
              children: [
                ElevatedButton(
                    onPressed: () => auth.signIn(emailInput, passwordInput),
                    child: Text("Sign In"))
              ],
            )
          ]));
    }

    if (_localNav == "SIGN_UP") {
      return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            TextButton(
              onPressed: _onTap("CHOOSE"),
              child: Text("Back"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            Text("Sign Up"),
            StringInput(
              label: "Email",
              value: emailInput,
              onChange: onChangeEmail,
              isAnEmail: true,
            ),
            StringInput(
                label: "Password",
                value: passwordInput,
                onChange: onChangePassword,
                obscureText: true),
            StringInput(
                label: "Confirm Password",
                value: confirmPasswordInput,
                onChange: onChangeConfirmPassword,
                obscureText: true),
            ButtonBar(
              children: [
                ElevatedButton(
                    onPressed: () => auth.signUp(emailInput, passwordInput),
                    child: Text("Sign Up"))
              ],
            )
          ]));
    } 

    return Container();
  }
}
