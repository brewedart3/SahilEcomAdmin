import 'package:flutter/cupertino.dart';
import 'package:sahilweb/screens/HomeScreen.dart';
import 'package:sahilweb/screens/LoginScreen.dart';
import 'package:sahilweb/screens/SplashScreen/SplashScreen.dart';
import 'theme/string.dart';

Map<String, WidgetBuilder> route({RouteSettings? settings}) {
  return {
    RouteName.SplashScreen: (context) =>  SplashScreen(),
    RouteName.LoginScreen: (context) =>  LoginScreen(),
    RouteName.HomeScreen: (context) =>  HomeScreen(),
    // RouteName.HtmlToPdfScreen: (context) => HtmlToPdfScreen(argument: settings!.arguments,),

  };
}
