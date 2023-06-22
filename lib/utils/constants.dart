import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:crypto/crypto.dart';
import 'package:sahilweb/theme/string.dart';
import 'package:sahilweb/utils/lang/languages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svprogresshud/flutter_svprogresshud.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common/info_dialog.dart';
import '../theme/color.dart';
import '../theme/style.dart';
import 'Device.dart';




const String HolidayLIST = "HolidayLIST/api/";
const String IP = ":;1/";
const String RELEASE_DOMAIN = "";
// String BASE_URL = "$STAGING_DOMAIN";
// String BASE_URL = "http://10.43.34.138:8000/api/";
String BASE_URL = "http://10.43.34.138:8080/dg2.0/api/";
String APPDEBUG = "0";
const String IMAGE_URL = "";
const kDebugMode = true;
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final Future<SharedPreferences> sharedPreferences =
    SharedPreferences.getInstance();

bool isLogin = false;
double? deviceHeight;
double? deviceWidth;
bool sessionExpired = false;
var personelNo;

class Size_constants {
  static const double padding = 5.0;

  static const double verticalPadding = 8.0;

  static const double horizontalPadding = 5.0;

  static const double margin = 5.0;
  static const double verticalMargin = 8.0;
  static const double horizontalMargin = 8.0;
  static const double radius = 5.0;
  static double calanderIcon = Device.get().isTablet ? 25.0 : 20.0;
  static const double listItemHeight = 45.0;
  static const double dashboardIcon50 = 40.0;
  static double dashboardIcon28 = Device.get().isTablet ? 28.0 : 24.0;
  static double dashboardCardHeight = Device.get().isTablet ? 240.0 : 200.0;
  static double dashboardCardIconSize = Device.get().isTablet ? 34.0 : 25.0;
  static double buttonWidthLogout = Device.get().isTablet ? 120.0 : 95.0;
}

class getToken {
  static const String
  token = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTY4NTk2MzYzOCwiZXhwIjoxNjg1OTY3MjM4LCJuYmYiOjE2ODU5NjM2MzgsImp0aSI6Ik9MS0tUeDRaOHhSbG1aOGQiLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.gQFwgAwMT_hkjjDwawzRp4sCEEwdyXbEyo43EIUEDyw";
}

class StatusBarStyle {
  static const String light = 'light';
  static const String dark = 'dark';
}

class StringConstant {
  static const String appName = 'appName';
  static const String channelID = '${appName}Notification';
  static const String channelName = 'General Notification';
  static const String channelDesc = '$appName Notifications';
}

String generateMd5(String input) {
  return md5.convert(utf8.encode(input)).toString();
}




class Constants {
  static const String id = 'id';
  static const String Id = 'Id';
  static const String user = 'user';
  static const String generateClienttoken = 'generateClienttoken';
  static const String menuList = 'menuList';
  static const String userId = 'userId';


  static const String TxnID = 'TxnID';



  static const String designationName = 'designationName';
  static const String employeeName = 'employeeName';
  static const String isLogin = 'isLogin';

  static const String key = 'key';
  static const String  requestToken= 'requestToken';

  static const String access_token = 'access_token';
  static const String LoginUsername = 'LoginUsername';
  static const String Username = 'Username';
  static const String Password = 'Password';
  static const String Type = 'Type';
  static const String fromDate = 'fromDate';
  static const String leaveId = 'leaveId';
  static const String rejectReasonId = 'rejectReasonId';
  static const String rejectReasonNotes = 'rejectReasonNotes';
  static const String applicationStatus = 'applicationStatus';
  static const String leaveStatusDetailsId = 'leaveStatusDetailsId';
  static const String toDate = 'toDate';
  static const String departmentId = 'departmentId';
  static const String branchId = 'branchId';
  static const String fileName = 'fileName';
  static const String loggedinUserId = 'loggedinUserId';
  static const String userid = 'userid';
  static const String languageId = 'languageId';
  static const String IpAddress = 'IpAddress';
  static const String requestId = 'requestId';
  static const String url_type = 'url_type';
  static const String authorization = 'Authorization';
  static const String ContentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const String APP_THEME = 'APP_THEME';
  static const String SYSTEM_DEFAULT = 'SYSTEM_DEFAULT';
  static const String DARK = 'DARK';
  static const String LIGHT = 'LIGHT';
  static const String startDate_leave_request_filter = 'startDate';
  static const String endDate_leave_request_filter = 'endDate';
  static const String LeaveTypeDetailsId_leave_request_filter =
      'LeaveTypeDetailsId';

  static const String recId = 'recId';
  static const String empId = 'empId';
  static const String empid = 'empid';


  static const String deviceId = 'deviceId';
  static const String uuid = 'uuid';
  static const String uuid_respo = 'uuid_respo';
  static const String aadhar_number_share_pref = 'aadhar_number_share_pref';

  static const String ed_id = 'ed_id';
  static const String ea_id = 'ea_id';
  static const String er_id = 'er_id';
  static const String ed_pid = 'ed_pid';
  static const String debug = 'debug';

  static const String approvedEmpId = 'approvedEmpId';
  static const String statusId = 'statusId';
  static const String createdBy = 'createdBy';
  static const String modifiedBy = 'modifiedBy';
  static const String comment = 'comment';
  static const String approvedDesignationId = 'approvedDesignationId';
  static const String applicationRequestType = 'applicationRequestType';
  static const String deviceModelName = 'deviceModelName';
  static const String firebaseid = 'firebaseid';
  static const String mobileType = 'mobileType';
  static const String ipAddress = 'ipAddress';
  static const String serviceProviderName = 'serviceProviderName';
  static const String mobileCompanyName = 'mobileCompanyName';
  static const String appVersion = 'appVersion';
  static const String flage1 = 'flage1';
  static const String flage2 = 'flage2';
  static const String flage3 = 'flage3';
  static const String flage4 = 'flage4';
  static const String flage5 = 'flage5';


  static final int MAX_RANDOMBITS_VALUE = 8388607; // (Math.pow(2, 23) - 1) >> 0
  static final int  SIMPLEFLAKE_EPOCH = 946684800000; // Date.UTC(2000, 0, 1) == epoch
}

class RequestActionType {
  static const String cancel = 'cancellation';
  static const String conversion = 'conversion';
  static const String extension = 'extension';
  static const String edit = 'edit';
  static const String curtailment = 'curtailment';
}

class FileType {
  static const String pdf = 'PDF';
  static const String png = 'PNG';
  static const String jpg = 'JPG';
  static const String jpeg = 'JPEG';
}

class LoginType {
  static const int email = 1;
  static const int mobile = 2;
}

class LanguageType {
  static const String English = "en";
  static const String Hindi = "hi";
  static const String Gujarati = "gu";
}

class Utils {
  static void showLoader() {
    SVProgressHUD.setBackgroundLayerColor(Colors.black12);
    SVProgressHUD.setBackgroundColor(Colors.black12);
    SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.black);
    SVProgressHUD.show();
  }

  static void hideLoader() {
    SVProgressHUD.dismiss();
  }

  static DateTime dateYMD(String date) {
    print(date);
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('yyyy-MM-dd hh:mm:ss');
    var inputDate = inputFormat.parse(str); // <-- dd/MM 24H format
    return inputDate;
  }

  static DateTime dateYMD1(String date) {
    print(date);
    try {
      var str = date.replaceAll("T", " ");
      str = str.replaceAll("Z", " ");
      var inputFormat = DateFormat('yyyy-MM-dd');
      var inputDate = inputFormat.parse(str); // <-- dd/MM 24H format
      return inputDate;
    } catch (e) {
      return DateTime.now();
    }
  }

  static DateTime dateMDY(String date) {
    print(date);
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('MM/dd/yyyy hh:mm:ss');
    var inputDate = inputFormat.parse(str); // <-- dd/MM 24H format
    return inputDate;
  }

  static DateTime dateDMY(String date) {
    print(date);
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('dd-MM-yy');
    var inputDate = inputFormat.parse(str); // <-- dd/MM 24H format
    return inputDate;
  }

  static String dateConvert(String date) {
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format
    var outputFormat = DateFormat('MM-dd-yy hh:mm a');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String onlyDateConvert(String? date) {
    if (date == null || date == "") {
      return "";
    }
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format

    var outputFormat = DateFormat('dd-MM-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }
  static String onlyDateConvertMDY(String? date) {
    if (date == null || date == "") {
      return "";
    }
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format

    var outputFormat = DateFormat('MM-dd-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }
  static String dateConvertDMYtoYMD(String? date) {
    if (date == null || date == "") {
      return "";
    }
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('dd-MM-yyyy');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format

    var outputFormat = DateFormat('yyyy-MM-dd');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String onlyYearConvert(String? date) {
    if (date == null || date == "") {
      return "";
    }
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format

    var outputFormat = DateFormat('yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String onlyTimeConvert1(String? date) {
    if (date == null || date == "") {
      return "";
    }
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format

    var outputFormat = DateFormat('HH:mm');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String onlyDateConvert11(String? date) {
    if (date == null || date == "") {
      return "";
    }
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('MM/dd/yyyy HH:mm:ss');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format

    var outputFormat = DateFormat('dd-MM-yyyy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String onlyDateConvert1(String date) {
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('yyyy-MM-dd');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format

    var outputFormat = DateFormat('MM-dd-yy');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String onlyTimeConvert(String date) {
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format

    var outputFormat = DateFormat('hh:mm a');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String time24to12(String date) {
    var str = date.replaceAll("T", " ");
    str = str.replaceAll("Z", " ");
    var inputFormat = DateFormat('HH:mm');
    var inputDate = inputFormat.parse(str, false); // <-- dd/MM 24H format
    var outputFormat = DateFormat('hh:mm a');
    var outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  static String getTimeToHour(String time) {
    //return numberToFormat;
    if (time != "") {
      var min = int.parse(time);
      if (min < 60) {
        return "$min min";
      } else {
        var h = (min / 60).round();
        var m = (min % 60).round();
        return "$h h $m min";
      }
    }
    return "-";
  }



  static Future<dynamic> customConfirmDialog(BuildContext context, String title,
      {String yes = "Yes", String no = "No", Color? yesButton}) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Stack(
              children: <Widget>[
                Container(
                  // width: Device.width/2,
                  padding: EdgeInsets.all(30),
                  // margin: const EdgeInsets.only(top: 25.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Theme.of(context).colorScheme.cardBack,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        title,
                        style: Style(context).normalBlackTextSemiBold14(),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context, false);
                            },
                            child: Container(
                              // width: 85,
                              // height: 30,
                              width: Size_constants.buttonWidthLogout,
                              height: Size_constants.listItemHeight,
                              decoration: BoxDecoration(
                                  color: colors.grayTemp,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Center(
                                  child: Text(
                                no,
                                style: Style(context)
                                    .boldWhiteText13()
                                    .copyWith(color: colors.whiteTemp),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context, true);
                            },
                            child: Container(
                              width: Size_constants.buttonWidthLogout,
                              height: Size_constants.listItemHeight,
                              decoration: BoxDecoration(
                                  color: yesButton ??
                                      colors.yellowTemp,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Center(
                                  child: Text(
                                yes,
                                style: Style(context)
                                    .boldWhiteText13()
                                    .copyWith(color: colors.whiteTemp),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  static simpleflake() {

    const int SIMPLEFLAKE_TIMESTAMP_SHIFT = 16;
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    int epoch = DateTime(1970).millisecondsSinceEpoch;
    int randomBits = math.Random().nextInt(1 << 16); // Generate 16-bit random number

    BigInt bigIntTimestamp = BigInt.from(timestamp - epoch);
    BigInt shiftedTimestamp = bigIntTimestamp << SIMPLEFLAKE_TIMESTAMP_SHIFT;
    BigInt bigIntRandomBits = BigInt.from(randomBits);
    BigInt result = shiftedTimestamp | bigIntRandomBits;

    print(result);

    return result;
  }





}

class BigInteger {
  Uint8List y = _writeBigInt(_convertBytesToBigInt(_writeBigInt(
      _convertBytesToBigInt(
          Uint8List.fromList(const Utf8Encoder().convert('ab'))) *
          BigInt.two)) ~/
      BigInt.two);
}

BigInt _convertBytesToBigInt(Uint8List bytes) {
  BigInt result = BigInt.zero;

  for (final byte in bytes) {
// reading in big-endian, so we essentially concat the new byte to the end
    result = (result << 8) | BigInt.from(byte);
  }
  return result;
}

Uint8List _writeBigInt(BigInt number) {
  // Not handling negative numbers. Decide how you want to do that.
  int bytes = (number.bitLength + 7) >> 3;
  var b256 = BigInt.from(256);
  var result = Uint8List(bytes);
  for (int i = 0; i < bytes; i++) {
    result[i] = number.remainder(b256).toInt();
    number = number >> 8;
  }
  return result;
}

class TitleInblackCenter {
  static Widget rowTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(TextSpan(
            style: Style(context)
                .boldBlackText14()
                .copyWith(color: Theme.of(context).colorScheme.black),
            text: "$title",
          )),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}
class TitleInblackStart {
  static Widget rowTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text.rich(TextSpan(
            style: Style(context)
                .boldBlackText14()
                .copyWith(color: Theme.of(context).colorScheme.black),
            text: "$title",
          )),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}


class VerifiedAadharGreenSymbol {
  static Widget rowVerifiedAadharGreenSymbol(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Images.avatar,
            height: 25,
            width: 25,
          ),

          Text("$title",style: Style(context)
                  .boldBlackText12()
                  .copyWith(color: Theme.of(context).colorScheme.black),),
          SizedBox(height: 5,)
        ],
      ),
    );
  }
}


class rowText {
  static Widget rowTitle(BuildContext context, String title,String value) {
    return Column(
      children: [
        Text.rich(TextSpan(
            style: Style(context).boldBlackText12().copyWith(color: Theme.of(context).colorScheme.primaryApp),
            text: "$title :  ",
            children: <InlineSpan>[TextSpan(text: value, style: Style(context).regularBlackText12(),)
            ])),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}

class ToastUtils {
  static void showToast(String str) {
    Fluttertoast.showToast(
        msg: str,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.grey,
        backgroundColor: Colors.white,
        textColor: Colors.black87,
        fontSize: 16.0);
  }

  static void setSnackBar(
    BuildContext context,
    String msg, {
    Color? color,
    Color? textColor,
  }) {
    if (msg != null && msg != "") {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          msg,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor ?? Theme.of(context).colorScheme.white),
        ),
        elevation: 1.0,
        backgroundColor: color ?? colors.primary,
      ));
    }
  }
  static void setSnackBarError(
    BuildContext context,
    String msg, {
    Color? color,
    Color? textColor,
  }) {
    if (msg != null && msg != "") {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          msg,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor ?? Theme.of(context).colorScheme.white),
        ),
        elevation: 1.0,
        backgroundColor: color ?? colors.error,
      ));
    }
  }

  static void showErrorDialog(String message, BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(Languages.of(context)!.AnErrorOccurred),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text(Languages.of(context)!.Okay),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }
}

class APIStatusCheck {
  static Future<bool> checkCode(
      BuildContext context, int? statusCode, int? status) async {
    if ((status != null && status == 401) ||
        (statusCode != null && statusCode == 401)) {
      if (!sessionExpired) {
        sessionExpired = true;
        ToastUtils.setSnackBar(
            context, Languages.of(context)!.AuthenticationFail,
            color: colors.error);
        var pref = await SharedPreferences.getInstance();
        await pref.clear();
        navigatorKey.currentState!.pushNamedAndRemoveUntil(RouteName.LoginScreen, (route) => false);
      }
      return false;
    }
    return true;
  }
}

class ConnectionChecker {
  static Future<bool> check(BuildContext context) async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      ConnectivityResult result = await Connectivity().checkConnectivity();
      if (result == ConnectivityResult.mobile) {
        return true;
      } else if (result == ConnectivityResult.wifi) {
        return true;
      }
    } on PlatformException catch (e) {
      logger.e(e.toString());
    }
    // ignore: use_build_context_synchronously
    _commonInfoDialog(
      context,
      title: Languages.of(context)!.NoInternetConnection,
      descriptions:
          Languages.of(context)!.MakeSureWifiorMobiledataisturnedonthentryagain,
      lottiePath: LottieFiles.no_internet,
      btnTitle: Languages.of(context)!.Okay,
      closeButtonVisible: false,
      titleCenter: true,
      closePress: () {},
      buttonPress: () {
        Navigator.pop(context);
      },
    );
    return false;
  }

  static Future _commonInfoDialog(BuildContext context,
      {title = "",
      descriptions = "",
      lottiePath = "",
      iconPath = "",
      btnTitle = "",
      closeButtonVisible = false,
      VoidCallback? closePress,
      VoidCallback? buttonPress,
      titleCenter = true}) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext c) {
          return InfoDialogBox(
            title: title,
            descriptions: descriptions,
            lottiePath: lottiePath,
            iconPath: iconPath,
            btnTitle: btnTitle,
            closeButtonVisible: closeButtonVisible,
            titleCenter: titleCenter,
            closePress: closePress ?? () {},
            buttonPress: buttonPress ?? () {},
          );
        });
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

bool isEmail(String em) {
  String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(p);
  return regExp.hasMatch(em);
}

String phoneNumberFormatter(String number) {
  try {
    String n =
        "+1${number.replaceAllMapped(RegExp(r'(\d{3})(\d{3})(\d+)'), (Match m) => "(${m[1]}) ${m[2]}-${m[3]}")}";
    return n;
  } catch (e) {
    return number;
  }
}

void dialNumber(String number) {
  try {
    launch("tel://+1$number");
  } catch (e) {
    logger.d(e);
  }
}

void openUrl(String url) {
  try {
    launch(url);
  } catch (e) {
    logger.d(e);
  }
}

bool isPhone(String input) =>
    RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
        .hasMatch(input);

const kAnimationDuration = Duration(milliseconds: 200);

var logger = Logger();

void hideKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

List<String> yearList() {
  int currentYear = DateTime.now().year;
  int startYear = 1999;

  List<String> list = [];
  for (int i = startYear; i <= currentYear; i++) {
    list.add(i.toString());
  }
  return list;
}

class ImageType {
  static const String profile = 'profile';
  static const String cover = 'cover';
}

class CustomFileType {
  static const String camera = 'camera';
  static const String photo = 'photo';
  static const String video = 'video';
  static const String audio = 'audio';
  static const String pdf = 'pdf';
}

extension CompareDates on DateTime {
  bool isDateEqual(DateTime date2) {
    return year == date2.year && month == date2.month && day == date2.day;
  }

}









