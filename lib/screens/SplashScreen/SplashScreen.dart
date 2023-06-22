import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahilweb/screens/LoginScreen.dart';
import 'package:sahilweb/screens/LoginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../theme/string.dart';
import '../../utils/constants.dart';


class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>  {

  bool _a = false;

  @override
  void initState() {
    super.initState();
    hideKeyboard();
    checkLogin();

    Timer(Duration(milliseconds: 200), () {
      setState(() {
        _a = !_a;
      });
    });
    Timer(Duration(milliseconds: 5000), () {
      if (isLogin)
        // navigatorKey.currentState!.pushReplacementNamed(RouteName.HomeScreen);
        navigatorKey.currentState!.pushReplacementNamed(RouteName.MainScreen);
      else
        navigatorKey.currentState!.pushReplacementNamed(RouteName.LoginScreen);


    });
  }
  void checkLogin() async {
    final prefs = await SharedPreferences.getInstance();
    isLogin = ((prefs.getBool(Constants.isLogin) != null)
        ? prefs.getBool(Constants.isLogin)
        : false)!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit, size: 250),
            Text("Splash Screen", style: TextStyle(fontSize: 25),)
          ],
        ),

      ),
    );
  }
}


