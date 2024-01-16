import 'package:ecomate/proto/main.pbgrpc.dart';
import 'package:ecomate/services/auth.dart';
import 'package:ecomate/widgets/common/auth_modal.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth extends ChangeNotifier {
  static String googleOAuthToken = '';
  static String googleUserId = '';
  static String jwtToken = '';
  static bool isLoading = false;
  GoogleSignIn googleSignIn = GoogleSignIn(
      // Optional clientId
      // clientId: 'your-client_id.apps.googleusercontent.com',
      clientId:
          "667013754483-1qq4uir1dttq03un2ejh5npb9q2h2s96.apps.googleusercontent.com",
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ]);

  void setGoogleOAuthToken(String token) {
    googleOAuthToken = token;
    notifyListeners();
  }

  void setGoogleUserId(String userId) {
    googleUserId = userId;
    notifyListeners();
  }

  void setIsLoading(bool loading) {
    isLoading = loading;
    notifyListeners();
  }

  Future<void> signInWithGoogle() async {
    try {
      await googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  Future<void> signIn(String email, String password) async {
    setIsLoading(true);
    try {
      LoginRequest req = LoginRequest(email: email, password: password);
      await AuthService.instance.authServiceClient.login(req).then((res) {
        jwtToken = res.accessToken;

        // TODO : set jwt token to local storage
      });
    } catch (error) {
      print(error);
    }
  }

  Future<void> signUp(String email, String password) async {
    setIsLoading(true);
    try {
      RegisterRequest req = RegisterRequest(email: email, password: password);
      await AuthService.instance.authServiceClient.register(req).then((res) {
        jwtToken = res.accessToken;

        // TODO : set jwt token to local storage
      });
    } catch (error) {
      print(error);
    }
  }

  void checkAuth(BuildContext context) {
    if (jwtToken == '') {
      showAuthModal(context);
    }
  }

  String getGoogleOAuthToken() {
    return googleOAuthToken;
  }
}
