import 'package:flutter/cupertino.dart';
import 'package:sahilweb/screens/HomeScreen.dart';
import 'package:sahilweb/screens/LoginScreen.dart';
import 'package:sahilweb/screens/RegistrationScreen.dart';
import 'package:sahilweb/screens/SplashScreen/SplashScreen.dart';
import 'package:sahilweb/screens/main/main_screen.dart';
import 'theme/string.dart';

Map<String, WidgetBuilder> route({RouteSettings? settings}) {
  return {
    RouteName.SplashScreen: (context) =>  SplashScreen(),
    RouteName.LoginScreen: (context) =>  LoginScreen(),
    RouteName.HomeScreen: (context) =>  HomeScreen(),
    RouteName.RegistrationScreen: (context) =>  RegistrationScreen(),
    RouteName.MainScreen: (context) =>  MainScreen(),
    // RouteName.HtmlToPdfScreen: (context) => HtmlToPdfScreen(argument: settings!.arguments,),

  };
}
