import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/textfield.dart';
import '../constants.dart';
import '../provider/AuthProvider.dart';
import '../theme/string.dart';
import '../theme/style.dart';
import '../utils/constants.dart' as c;
import '../utils/constants.dart';
import '../widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final _auth = FirebaseAuth.instance;

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Image.asset(Images.login),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to Admin Panel',
                        style: Style(context).boldBlackText26(),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CTextField(
                        hintText: "Enter your email",
                        lable: "",
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      CTextField(
                        hintText: "Enter your password.",
                        lable: "",
                        obscureText: true,
                        passwordToggle: true,
                        keyboardType: TextInputType.text,
                        controller: _passwordController,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      isLoading
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircularProgressIndicator(
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 20,),
                                  Text("Please wait....")
                                ],
                              ),
                            )
                          : RoundedButton(
                              colour: Colors.lightBlueAccent,
                              title: 'Log In',
                              onPressed: () async {
                                if (isLoading) return;
                                setState(() {
                                  isLoading  = true;
                                });

                                var email =
                                    _emailController.text.toString().trim();
                                var password =
                                    _passwordController.text.toString().trim();
                                if (email.isEmpty) {
                                  c.ToastUtils.setSnackBar(
                                      context, "Enter Email");
                                  setState(() {
                                    isLoading  = false;
                                  });

                                  return;
                                } else if (email != "admin@gmail.com") {
                                  c.ToastUtils.setSnackBar(
                                      context, "You are not admin..!");
                                  setState(() {
                                    isLoading  = false;
                                  });

                                  return;
                                } else if (password.isEmpty) {
                                  c.ToastUtils.setSnackBar(
                                      context, "Enter Password");
                                  setState(() {
                                    isLoading  = false;
                                  });

                                  return;
                                }
                                final authProvider = Provider.of<AuthProvider>(context, listen: false);
                                authProvider.login(context,email, password);
                                if (authProvider.user != null) {
                                  // User is logged in
                                  final prefs = await SharedPreferences.getInstance();
                                  prefs.setBool(Constants.isLogin, true);

                                  c.ToastUtils.setSnackBar(context,"successfully login");
                                  navigatorKey.currentState!.pushReplacementNamed(RouteName.HomeScreen);
                                } else {
                                  // User is logged out

                                  setState(() {
                                    isLoading  = false;
                                  });

                                }
                              }),
                      GestureDetector(
                        onTap: () {
                          // navigatorKey.currentState!.pushReplacementNamed(RouteName.RegistrationScreen);

                        },
                        child: Text(
                          'Click to registration...',
                          style: Style(context).boldBlackText18(),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
