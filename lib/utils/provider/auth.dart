import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth extends ChangeNotifier {
  static String googleOAuthToken = '';
  GoogleSignIn googleSignIn = GoogleSignIn(
      // Optional clientId
      // clientId: 'your-client_id.apps.googleusercontent.com',
      clientId: "667013754483-1qq4uir1dttq03un2ejh5npb9q2h2s96.apps.googleusercontent.com",
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ]);

  void setGoogleOAuthToken(String token) {
    googleOAuthToken = token;
    notifyListeners();
  }

  Future<void> signInWithGoogle() async {
    try {
      await googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  String getGoogleOAuthToken() {
    return googleOAuthToken;
  }
}
