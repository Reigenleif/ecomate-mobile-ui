import 'package:ecomate/provider/auth.dart';
import 'package:ecomate/utils/toast.dart';
import 'package:ecomate/widgets/common/custom_form/string_input.dart';
import 'package:ecomate/widgets/common/google_signin_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void showAuthModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(bottom: 30),
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
          padding: EdgeInsets.all(30.0),
          child: Column(children: [
            Text("Sign in to continue"),
            TextButton(
              onPressed: _onTap("SIGN_IN"),
              child: Container(
                  width: double.maxFinite,
                  child: Text(
                    "Sign In",
                    textAlign: TextAlign.center,
                  )),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.primary),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).colorScheme.onPrimary)),
            ),
            TextButton(
              onPressed: _onTap("SIGN_UP"),
              child: Container(
                  width: double.maxFinite,
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                  )),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.primary),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: double.maxFinite,
              child: Text(
                "Or",
                textAlign: TextAlign.center,
              ),
            ),
            GoogleSignInButton(onSignIn: auth.signInWithGoogle)
          ]));
    }

    if (_localNav == "SIGN_IN") {
      return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            Text("Sign in to continue"),
            Text("Sign In",
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
              value: emailInput,
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
                value: passwordInput,
                onChange: onChangePassword,
                obscureText: true),
            ButtonBar(
              children: [
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
                ElevatedButton(
                    onPressed: () =>
                        auth.signIn(emailInput, passwordInput).then((value) {
                          Navigator.pop(context);
                          toastSuccess(context, "Sign In Success");
                        }),
                    child: Text("Sign In"))
              ],
            )
          ]));
    }

    if (_localNav == "SIGN_UP") {
      return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            Text("Sign in to continue"),
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
              value: emailInput,
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
                value: passwordInput,
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
                value: confirmPasswordInput,
                onChange: onChangeConfirmPassword,
                obscureText: true),
            ButtonBar(
              children: [
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
                ElevatedButton(
                    onPressed: () =>
                        auth.signUp(emailInput, passwordInput).then((value) {
                          Navigator.pop(context);
                          toastSuccess(context, "Sign Up Success");
                        }),
                    child: Text("Sign Up"))
              ],
            )
          ]));
    }

    return Container();
  }
}
