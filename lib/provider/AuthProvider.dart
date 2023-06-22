import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sahilweb/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../theme/string.dart';

class AuthProvider extends ChangeNotifier {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? _user;

  User? get user => _user;

  Future<void> login(BuildContext context,String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user;
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool(Constants.isLogin, true);
      // navigatorKey.currentState!.pushReplacementNamed(RouteName.HomeScreen);
      navigatorKey.currentState!.pushReplacementNamed(RouteName.MainScreen);

      ToastUtils.setSnackBar(context, "successfully login");
      notifyListeners();
    } catch (error) {
      // Handle error
      print("sahil : ${error.toString()}");
      if(error.toString().endsWith("[firebase_auth/unknown] An unknown error occurred: FirebaseError: Firebase: The password is invalid or the user does not have a password. (auth/wrong-password).")){
        ToastUtils.setSnackBar(context,"Password Wrong");

      }else{
        ToastUtils.setSnackBar(context,"Something wrong : ${error.toString()}");

      }
      Navigator.of(context).pop();
    }
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
    _user = null;
    notifyListeners();
  }
}
