import 'package:flutter/material.dart';

extension colors on ColorScheme {
  static MaterialColor primary_app = const MaterialColor(
    0xffFC6A57,
    <int, Color>{
      50: Color(0x800b4354),
      100: primary,
      200: primary,
      300: primary,
      400: primary,
      500: primary,
      600: primary,
      700: primary,
      800: primary,
      900: primary,
    },
  );
  static MaterialColor mWhite = const MaterialColor(
    0xffFC6A57,
    <int, Color>{
      50: whiteTemp,
      100: whiteTemp,
      200: whiteTemp,
      300: whiteTemp,
      400: whiteTemp,
      500: whiteTemp,
      600: whiteTemp,
      700: whiteTemp,
      800: whiteTemp,
      900: whiteTemp,
    },
  );
  static const Color lightgreenshede = Color(0xFFF0FAF6);
  static const Color lightgreenshede1 = Color(0xFFB2D9CC);
  static const Color greenshede0 = Color(0xFF66A690);
  static const Color greenshede1 = Color(0xFF93C9B5);
  static const Color primarygreen = Color(0xFF1E3A34);
  static const Color grayshade = Color(0xFF93B3AA);
  //static const Color colorAccent =Color(0xff0B4354);
  static const Color colorAccent =Color(0xff0a5688);
  static const Color colorAccentDark =Color(0xffFFFFFF);
  static const Color cyanColor = Color(0xFF6D7E6E);

  //static const Color primary =Color(0xff0B4354);
  static const Color primary =Color(0xff0a5688);
  static const Color primary_transparent =Color(0x980a5688);
  static const Color link_text =Color(0xff883c0a);

  static const Color primaryLight =Color(0xff3a6a79);
  //static const Color secondary =  Color(0xff0B4354);
  static const Color secondary =  Color(0xff0a5688);
  static const Color lightPrimary =  Color(0xff5c829b);
  static const Color secondaryLight =  Color(0xffCCDDFF);

  //static const Color firstColor =  Color(0xff0B4354);
  static const Color firstColor =  Color(0xff0a5688);
  //static const Color secondColor =  Color(0xff0B4354);
  static const Color secondColor =  Color(0xff0a5688);
  static Color grayLine = const Color(0xae9b9b9b);

  static const Color menuOne =  Color(0xffE65100);
  static const Color menuTwo =  Color(0xffE65100);
  static const Color menuthree =  Color(0xffE65100);

  static const Color reject_Color = Color(0xffFF4961 );
  static const Color entry_Color = Color(0xff666EE8 );
  static const Color approve_Color = Color(0xff28D094 );


  static const Color cardOneFirst =  Color(0xffE65100);
  static const Color cardOneSecond =  Color(0xffFFA000);
  static const Color cardTwoFirst =  Color(0xff0288D1);
  static const Color cardTwoSecond =  Color(0xff26C6DA);
  static const Color cardThreeFirst =  Color(0xffFF5252);
  static const Color cardThreeSecond =  Color(0xffF48FB1);

  static const Color leaveColor = Color(0xff28d094);
  static const Color aprColor = Color(0xffebc240);
  static const Color parColor = Color(0xff0b939f);
  static const Color ltcColor = Color(0xff6c258d);
  static const Color taDaColor = Color(0xffff4961);
  static const Color forignVisitColor = Color(0xff36708c);
  static const Color chargeAllowancesColor = Color(0xff1e9ff2);
  static const Color medicalColor = Color(0xffff9149);

  static const Color error = Color(0xffF43737);
  static const Color success = Color(0xff009E06);

  static const Color color1 = Color(0xff88a6a8);

  static const Color backgroundColor = Color(0xffF9F9F9);

  Color get btnColor => brightness == Brightness.dark ? whiteTemp : primary;
  Color get bgColor => brightness == Brightness.dark ? Color(0xff020202) : const Color(0xfff4f4f4);
  //Color get appFontColor => brightness == Brightness.dark ? whiteTemp : const Color(0xff0B4354);
  Color get appFontColor => brightness == Brightness.dark ? whiteTemp : const Color(0xff0a5688);

  Color get lightWhite =>
      brightness == Brightness.dark ? darkColor : const Color(0xffEEF2F9);

  Color get fontColor =>
      brightness == Brightness.dark ? whiteTemp : const Color(0xff222222);

  Color get gray =>
      brightness == Brightness.dark ? darkColor3 : grayTemp;
  Color get primaryApp => brightness == Brightness.dark ? Color(0xff1fa0ef) : primary;
  Color get primaryAppLight => brightness == Brightness.dark ? Color(0xff36b4d2) : primaryLight;

  Color get simmerBase => brightness == Brightness.dark ? darkColor2 : Colors.grey[300]!;

  Color get simmerHigh =>
      brightness == Brightness.dark ? darkColor : Colors.grey[100]!;

  static Color darkIcon = const Color(0xff9B9B9B);
  static Color grayTemp = const Color(0xff9B9B9B);
  static Color grayShado = const Color(0xffdbdbdb);
  static Color grayLight = const Color(0xffe3e3e3);
  static Color grayCartLight = const Color(0xfff3f3f3);
  static Color transparent = Colors.transparent;

  static Color shimmerLight = const Color(0xffffffff);
  static Color shimmerBase = black54;

  static const Color subtitle = Color(0xff34648C);

  static const Color red = Colors.red;
  static const Color PrimaryColor = Color(0xff0a5688);//Colors.deepPurple
  static   Color PrimaryColorLight = Color(0x410a5688);

  static const Color PublicHoliday =  const Color(0xff9ba100);
  static const Color WeeklyOff =  const Color(0xffff0000);
  static const Color RestrictedHoliday =  const Color(0xff0022ff);

  Color get lightBlack =>
      brightness == Brightness.dark ? whiteTemp : const Color(0xff52575C);

  Color get lightBlack2 =>
      brightness == Brightness.dark ? white70 : const Color(0xff999999);

  static const Color
  darkColor = Color(0xff17242B);
  static const Color darkColor2 = Color(0xff29414E);
  static const Color darkColor3 = Color(0xff22343C);

  Color get white => brightness == Brightness.dark ? darkColor : const Color(0xffFFFFFF);
  static const Color whiteTemp = Color(0xffFFFFFF);
  // static const Color yellowTemp = Color(0xffFF9A00);
  static const Color yellowTemp = Colors.deepPurple;

  Color get black => brightness == Brightness.dark ? whiteTemp : const Color(0xff242A37);
  Color get darkFont => brightness == Brightness.dark ? whiteTemp : const Color(0xff363636);
  Color get primaryFont => brightness == Brightness.dark ? whiteTemp : const Color(0xff0a5688);

  static const Color white10 = Colors.white10;
  static const Color white30 = Colors.white30;
  static const Color white70 = Colors.white70;

  static const Color black54 = Colors.black54;
  static const Color black12 = Colors.black12;
  static const Color disableColor = Color(0xffEEF2F9);

  static const Color blackTemp = Color(0xff000000);

  Color get black26 =>
      brightness == Brightness.dark ? white30 : Colors.black26;
  Color get cardBack =>
      brightness == Brightness.dark ? Color(0xff3b3b3b) : Color(0xffFFFFFF);
  Color get cardBackBlue =>
      brightness == Brightness.dark ? Color(0xff3a6175) : Color(0xffc6e7fc);
  static const Color cardColor = Color(0xffFFFFFF);

  Color get back1 => brightness == Brightness.dark
      ? const Color(0xff1E3039)
      : const Color(0x66a2d8fe);

  Color get back2 => brightness == Brightness.dark
      ? const Color(0xff09202C)
      : const Color(0x66bdb1ff);

  Color get back3 => brightness == Brightness.dark
      ? const Color(0xff10101E)
      : const Color(0x66EFAFBF);

  Color get back4 => brightness == Brightness.dark
      ? const Color(0xff171515)
      : const Color(0x66F9DED7);

  Color get back5 => brightness == Brightness.dark
      ? const Color(0xff0F1412)
      : const Color(0x66C6F8E5);
}
