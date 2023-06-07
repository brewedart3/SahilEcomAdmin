import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../common/textfield.dart';
import '../constants.dart';
import '../theme/style.dart';
import '../widgets/rounded_button.dart';

//code for designing the UI of our text field where the user writes his email id or password



class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registation Page'),),

      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Image.asset('assets/sign_up.png'),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to Registration page',
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
                    RoundedButton(
                        colour: Colors.lightBlueAccent,
                        title: 'Register',
                        onPressed: () async {
                          var email = _emailController.text.toString().trim();
                          var password = _passwordController.text.toString().trim();
                          if (email.isEmpty) {
                            ToastUtils.setSnackBar(
                                context,"Enter Email");
                            return;
                          }else  if (password.isEmpty) {
                            ToastUtils.setSnackBar(
                                context,"Enter Password");
                            return;
                          }


                          try {
                            final newUser = await _auth.createUserWithEmailAndPassword(
                                email: email, password: password);
                            if (newUser != null) {
                              Navigator.pushNamed(context, 'home_screen');
                            }
                          } catch (e) {
                            print(e);
                          }

                        }),

                    GestureDetector(
                      onTap: (){
                        // Navigator.pushNamed(context, 'login_screen');
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('login_screen', (Route<dynamic> route) => false);
                      },
                      child: Text(
                        'Click to Login',
                        style: Style(context).boldBlackText18(),
                        textAlign: TextAlign.start,

                      ),
                    ),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}