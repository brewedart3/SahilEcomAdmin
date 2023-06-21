import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sahilweb/provider/AuthProvider.dart';
import 'package:sahilweb/provider/CategoryProvider.dart';
import 'package:sahilweb/provider/ThemeNotifier.dart';
import 'package:sahilweb/routes.dart';
import 'package:sahilweb/screens/SplashScreen/SplashScreen.dart';
import 'package:sahilweb/screens/LoginScreen.dart';
import 'package:sahilweb/utils/Device.dart';
import 'package:sahilweb/utils/constants.dart';
import 'package:sahilweb/utils/lang/app_localizations_dele.dart';
import 'package:sahilweb/utils/lang/locale_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'theme/style.dart';
import 'dart:async';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  prefs.then((value) {
    runApp(
      ChangeNotifierProvider<ThemeNotifier>(
        create: (BuildContext context) {
          String theme =
              value.getString(Constants.APP_THEME) ?? Constants.LIGHT;
          //  Constants.DARK;
          //  var brightness = MediaQuery.of(context).platformBrightness;
          if (theme == null ||
              theme == "" ||
              theme == Constants.SYSTEM_DEFAULT) {
            value.setString(Constants.APP_THEME, Constants.SYSTEM_DEFAULT);
            return ThemeNotifier(ThemeMode.system);
          }
          isThemeDark = theme == Constants.DARK ? true : false;
          return ThemeNotifier(
              theme == Constants.DARK ? ThemeMode.dark : ThemeMode.light);
        },
        child: MyApp(),
      ),
    );
  }
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLocale(newLocale);
  }

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale("en");

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);

    final themeNotifier = Provider.of<ThemeNotifier>(context);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider()),
        ChangeNotifierProvider<CategoryProvider>(
            create: (context) => CategoryProvider()),
         ],
      child: MaterialApp(
        theme: appThemeLight,
        darkTheme: appThemeDark,
        themeMode: themeNotifier.getThemeMode(),
        supportedLocales: const [
          Locale(LanguageType.English, ""),
          Locale(LanguageType.Hindi, ""),
          Locale(LanguageType.Gujarati, ""),
        ],
        localizationsDelegates: const [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale?.languageCode &&
                supportedLocale.countryCode == locale?.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        // builder: (context, child) {
        //   return MediaQuery(
        //       data: MediaQuery.of(context).copyWith(
        //           textScaleFactor: Device.get().isTablet ? 1.5 : 1.2),
        //       child: child!);
        // },
        title: 'SahilEcomWeb',
        home: SplashScreen(),
        onGenerateRoute: (RouteSettings settings) {
          print(settings.name);
          WidgetBuilder builder = route(settings: settings)[settings.name]!;
          return MaterialPageRoute(builder: (ctx) => builder(ctx));
        },
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        locale: _locale,
      ),
    );
  }
}

PageRouteBuilder animationScreen(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
        curve: Curves.fastLinearToSlowEaseIn,
        parent: animation,
      );
      return Align(
        alignment: Alignment.bottomCenter,
        child: SizeTransition(
          sizeFactor: animation,
          child: page,
          axisAlignment: 0,
        ),
      );
    },
  );
}






