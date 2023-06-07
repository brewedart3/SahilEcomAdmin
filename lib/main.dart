import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sahilweb/screens/HomeScreen.dart';
import 'package:sahilweb/screens/LoginScreen.dart';
import 'package:sahilweb/screens/RegistrationScreen.dart';
import 'package:sahilweb/screens/SplashScreen/SplashScreen.dart';
import 'package:sahilweb/screens/LoginScreen.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => SplashScreen(),
        'login_screen': (context) => LoginScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'home_screen': (context) => HomeScreen()
      },
    );
  }
}





