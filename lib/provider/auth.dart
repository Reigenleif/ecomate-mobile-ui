import 'package:ecomate/proto/main.pbgrpc.dart';
import 'package:ecomate/services/auth.dart';
import 'package:ecomate/services/user.dart';
import 'package:ecomate/utils/storage.dart';
import 'package:ecomate/utils/token_call_options.dart';
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

        storage.write(key: "jwtToken", value: res.accessToken);
        storage.write(key: "userId", value: res.id);
        notifyListeners();
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

        storage.write(key: "jwtToken", value: res.accessToken);
        storage.write(key: "userId", value: res.id);
        notifyListeners();
      });
      return;
    } catch (error) {
      print(error);
      return;
    }
  }

  Future<bool> checkAuth(BuildContext context) async {
    final storageJwtToken = await storage.read(key: "jwtToken");
    print("JWT Token checker: $storageJwtToken");

    final userId = await storage.read(key: "userId");
    print("UserId Checker : $userId");

    if (storageJwtToken != null && userId != null) {
      jwtToken = storageJwtToken;
      return true;
    } else {
      showAuthModal(context);
      return false;
    }

    final req = GetUserRequest(id: userId);
    try {
      await UserService.instance.userServiceClient
          .getUser(req, options: tokenCallOptions(jwtToken))
          .then((res) {
        jwtToken = res.accessToken;

        storage.write(key: "jwtToken", value: res.accessToken);
        storage.write(key: "userId", value: res.id);
        Navigator.of(context).pushNamedAndRemoveUntil(
            '/shell/home', (Route<dynamic> route) => false);
      });
      notifyListeners();
      return true;
    } catch (error) {
      showAuthModal(context);
    }
    return false;
  }

  String getGoogleOAuthToken() {
    return googleOAuthToken;
  }
}
