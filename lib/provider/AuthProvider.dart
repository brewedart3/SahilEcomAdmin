import 'package:flutter/cupertino.dart';

class AuthProvider with ChangeNotifier {
  // Future<LoginUsingWebUserModel?> appLoginUsingWebViewTokenAndTimestamp(
  //     BuildContext context,String url) async {
  //   bool connection = await ConnectionChecker.check(context);
  //   if (!connection) {
  //     return null;
  //   }
  //   // var pref = await SharedPreferences.getInstance();
  //   // var languageId = pref.getString(Constants.languageId) ?? "1";
  //   // var IpAddress = pref.getString(Constants.IpAddress) ?? "::1";
  //   // var requestId = pref.getString(Constants.requestId) ?? "1";
  //
  //   try {
  //     final uri = Uri.parse(
  //            url)
  //         .replace(queryParameters: null);
  //     if (kDebugMode) {
  //       print(uri);
  //     }
  //     final response = await http.get(uri);
  //     final responseData = json.decode(response.body);
  //
  //     if (kDebugMode) {
  //       logger.d(responseData);
  //     }
  //
  //     LoginUsingWebUserModel? mLoginUsingWebUserModel = LoginUsingWebUserModel.fromJson(responseData);
  //
  //     if (!mLoginUsingWebUserModel.isError!) {
  //       return mLoginUsingWebUserModel;
  //     } else {
  //       ToastUtils.setSnackBar(context, mLoginUsingWebUserModel.strMessage.toString(),
  //           color: colors.error);
  //     }
  //
  //     return null;
  //   } catch (error) {
  //     ToastUtils.setSnackBar(context, Messages.errorMsgSomeError,
  //         color: colors.error);
  //     return null;
  //   }
  // }
  //
  //
  // Future<UserModel?> login(
  //   BuildContext context,
  //   String ed_id,
  //   String ea_id,
  //   String er_id,
  //   String login_using,
  //   String username,
  //   String pass,
  //   String ed_pid,
  //   String debug,
  // ) async {
  //   bool connection = await ConnectionChecker.check(context);
  //   if (!connection) {
  //     return null;
  //   }
  //   // var pref = await SharedPreferences.getInstance();
  //   // var languageId = pref.getString(Constants.languageId) ?? "1";
  //   // var IpAddress = pref.getString(Constants.IpAddress) ?? "::1";
  //   // var requestId = pref.getString(Constants.requestId) ?? "1";
  //   try {
  //     // final queryParameters = {
  //     //   'ed_id':'0524cf4b47847dd83f01985436d7927f',
  //     //   'ea_id':'3ef226d6eb578258ed292e773558c951',
  //     //   'er_id':'5480e2f425b1163e0ab8d8fdb7e47ff4',
  //     //   'login_using':'0',
  //     //   'username':'test01@gmail.com',
  //     //   'pass':'74c6d49b25a21da9b5206e3c632c988a',
  //     //   'ed_pid':'6162959854942391251',
  //     //   'debug':'0'
  //     // };
  //
  //     final uri =
  //         Uri.parse("$BASE_URL/users/login").replace(queryParameters: null);
  //     if (kDebugMode) {
  //       print(uri);
  //     }
  //     // var body = json.encode({
  //     // 'ed_id':'0524cf4b47847dd83f01985436d7927f',
  //     // 'ea_id':'3ef226d6eb578258ed292e773558c951',
  //     // 'er_id':'5480e2f425b1163e0ab8d8fdb7e47ff4',
  //     // 'login_using':'0',
  //     // 'username':'test01@gmail.com',
  //     // 'pass':'74c6d49b25a21da9b5206e3c632c988a',
  //     // 'ed_pid':'6162959854942391251',
  //     // 'debug':'0'
  //     // });
  //     Map<String, dynamic> body = {
  //       'ed_id': '0524cf4b47847dd83f01985436d7927f',
  //       'ea_id': '3ef226d6eb578258ed292e773558c951',
  //       'er_id': '5480e2f425b1163e0ab8d8fdb7e47ff4',
  //       'login_using': '0',
  //       'username': 'test01@gmail.com',
  //       'pass': '74c6d49b25a21da9b5206e3c632c988a',
  //       'ed_pid': '6162959854942391251',
  //       'debug': '0'
  //     };
  //     //
  //     // Map<String, dynamic> body = {
  //     //   'ed_id': ed_id,
  //     //   'ea_id': ea_id,
  //     //   'er_id': er_id,
  //     //   'login_using': login_using,
  //     //   'username': username,
  //     //   'pass': pass,
  //     //   'ed_pid': ed_pid,
  //     //   'debug': debug
  //     // };
  //     final response = await http.post(uri,
  //         body: body,
  //         headers: {"Content-Type": "application/x-www-form-urlencoded"},
  //         encoding: Encoding.getByName("utf-8"));
  //
  //     final responseData = json.decode(response.body);
  //
  //     if (kDebugMode) {
  //       logger.d(responseData);
  //     }
  //
  //     CommonResponse? commonResponse = CommonResponse.fromJson(responseData);
  //
  //     if (await APIStatusCheck.checkCode(
  //         context, commonResponse.status, commonResponse.status)) {
  //       if (commonResponse.status == 1) {
  //         UserModel? userModel = UserModel.fromJson(commonResponse.dataObject);
  //
  //         ToastUtils.setSnackBar(context, commonResponse.message.toString(),
  //             color: colors.success);
  //
  //         return userModel;
  //       } else {
  //         // ToastUtils.setSnackBar(context, commonResponse.message.toString(), color: colors.error);
  //
  //       }
  //     }
  //     return null;
  //   } catch (error) {
  //     ToastUtils.setSnackBar(context, Messages.errorMsgSomeError,
  //         color: colors.error);
  //     rethrow;
  //   }
  // }
}
