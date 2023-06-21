import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sahilweb/utils/constants.dart';

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
      notifyListeners();


    } catch (error) {
      // Handle error
      ToastUtils.setSnackBar(context,"Something wrong : ${error.toString()}");

    }
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
    _user = null;
    notifyListeners();
  }
}
