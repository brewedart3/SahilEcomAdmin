import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart';

var isThemeDark = false;


ThemeData appThemeLight = ThemeData(
    backgroundColor: colors.whiteTemp,
    brightness: Brightness.light,
    primaryColor: colors.primary,
    hintColor: colors.colorAccent,
    primarySwatch: colors.primary_app,
    toggleableActiveColor: Colors.green,
    appBarTheme: const AppBarTheme(
      color: colors.primary,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith(
              (states) => colors.primary), //<-- SEE HERE
    ));

ThemeData appThemeDark = ThemeData(
    backgroundColor: colors.blackTemp,
    brightness: Brightness.dark,
    primarySwatch: colors.mWhite,
    hintColor: colors.colorAccentDark,
    toggleableActiveColor: Colors.green,
    unselectedWidgetColor: Colors.white,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: colors.whiteTemp),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateColor.resolveWith(
          (states) => colors.mWhite),
      overlayColor: MaterialStateColor.resolveWith(
              (states) => colors.mWhite)

    ));

Color colorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  return Color(int.parse('FF$hexColor', radix: 16));
}

String toHex(Color color) {
  var hex = '#${color.value.toRadixString(16)}';
  return hex;
}


/*
 Normal Font
 */
//Black
class Style {
  BuildContext context;

  Style(this.context);

  TextStyle normalWhiteText8() => TextStyle(
      fontSize:8,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");
  TextStyle normalWhiteText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalWhiteText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");
  TextStyle normalWhiteText13() => TextStyle(
      fontSize: 13,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");


  TextStyle normalWhiteText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalWhiteText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalWhiteText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalWhiteText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalWhiteText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalWhiteText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalWhiteText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle regularWhiteText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");
  TextStyle regularWhiteText6() => TextStyle(
      fontSize: 6,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularWhiteText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularWhiteText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularWhiteText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularWhiteText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularWhiteText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularWhiteText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularWhiteText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularWhiteText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle boldWhiteText8() => TextStyle(
      fontSize: 8,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");
  TextStyle boldWhiteText13() => TextStyle(
      fontSize: 13,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldWhiteText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle normalBlackText8() => TextStyle(
      fontSize: 8,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");
  TextStyle normalBlackText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalBlackTexsemit10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat semi bold");
  TextStyle normalBlackTexsemit13() => TextStyle(
      fontSize: 13,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat semi bold");
  TextStyle boldBlackText13() => TextStyle(
      fontSize: 13,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat_bold");

  TextStyle normalBlackText11() => TextStyle(
      fontSize: 11,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalBlackTextSemiBold11() => TextStyle(
      fontSize: 11,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w300,fontFamily: "montserrat semi bold");

  TextStyle normalBlackTextSemiBold12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.darkFont,
      // fontWeight: FontWeight.w400,fontFamily: "montserrat semi bold");
      fontWeight: FontWeight.w500,fontFamily: "montserrat semi bold");

  TextStyle normalBlackTextSemiBold14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.darkFont,
      // fontWeight: FontWeight.w400,fontFamily: "montserrat semi bold");
      fontWeight: FontWeight.w500,fontFamily: "montserrat semi bold");
  TextStyle normalBlackText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w200,fontFamily: "montserrat");
  TextStyle normalOrangeText12() => TextStyle(
      fontSize: 12,
      color: colors.menuOne,
      fontWeight: FontWeight.w900,fontFamily: "montserrat");
  TextStyle normalBlackText13() => TextStyle(
      fontSize: 13,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w200,fontFamily: "montserrat");

  TextStyle normalBlackText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");
  TextStyle normalBlackTextbold14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat_bold");

  TextStyle normalBlackText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalBlackText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalBlackText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalBlackText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalBlackText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalBlackText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle regularBlackText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");
  TextStyle regularBlackText11() => TextStyle(
      fontSize: 11,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularBlackText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");
  TextStyle regularBlackText13() => TextStyle(
      fontSize: 13,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularBlackText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularBlackText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularBlackText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularBlackText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularBlackText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularBlackText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularBlackText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle boldBlackText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");
  TextStyle boldBlackText11() => TextStyle(
      fontSize: 11,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");
  TextStyle boldBlackTextRegular10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w500,fontFamily: "montserrat semi bold");

  TextStyle boldBlackText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldBlackText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldwhiteText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.white,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");
  TextStyle boldBlackText14primary() => TextStyle(
      fontSize: 14,
      color: colors.blackTemp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldBlackText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldprimaryText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.primaryFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldBlackText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldBlackText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldBlackText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldBlackText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldBlackText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.darkFont,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle normalGrayText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalGrayText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalGrayText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalGrayText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalGrayText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalGrayText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalGrayText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalGrayText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalGrayText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle regularGrayText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularGrayText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularGrayText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularGrayText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularGrayText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularGrayText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularGrayText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularGrayText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularGrayText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle boldGrayText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldGrayText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldGrayText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldGrayText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldGrayText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldGrayText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldGrayText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldGrayText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldGrayText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.gray,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle normalPrimaryText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalPrimaryText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalPrimaryText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalPrimaryText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalPrimaryText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalPrimaryText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalPrimaryText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalPrimaryText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle normalPrimaryText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w400,fontFamily: "montserrat");

  TextStyle regularPrimaryText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularPrimaryText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularPrimaryText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularPrimaryText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularPrimaryText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularPrimaryText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularPrimaryText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularPrimaryText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle regularPrimaryText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w500,fontFamily: "montserrat");

  TextStyle boldPrimaryText10() => TextStyle(
      fontSize: 10,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldPrimaryText12() => TextStyle(
      fontSize: 12,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");
  TextStyle boldPrimaryColorText12() => TextStyle(
      fontSize: 12,
      color: colors.primary,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldPrimaryText14() => TextStyle(
      fontSize: 14,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldPrimaryText16() => TextStyle(
      fontSize: 16,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldPrimaryText18() => TextStyle(
      fontSize: 18,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldPrimaryText20() => TextStyle(
      fontSize: 20,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldPrimaryText22() => TextStyle(
      fontSize: 22,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldPrimaryText24() => TextStyle(
      fontSize: 24,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle boldPrimaryText26() => TextStyle(
      fontSize: 26,
      color: Theme.of(context).colorScheme.primaryApp,
      fontWeight: FontWeight.w700,fontFamily: "montserrat_bold");

  TextStyle normalwhiteTextSemiBold13() => TextStyle(
      fontSize: 13,
      color: Theme.of(context).colorScheme.white,
      // fontWeight: FontWeight.w400,fontFamily: "montserrat semi bold");
      fontWeight: FontWeight.w500,fontFamily: "montserrat semi bold");
}

/*
Name	      Weight
Normal,     Regular	400
Medium	    500
Semi Bold,  Demi Bold	600
Bold	700
 */
