import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:sahilweb/theme/color.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';


const defaultPadding = 16.0;
const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

class ToastUtils {
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
          style: TextStyle(color: textColor ?? Colors.white),
        ),
        elevation: 1.0,
        backgroundColor: color ?? Colors.blue,
      ));
    }
  }
}

class Utils {
  // static void showLoader() {
  //   SVProgressHUD.setBackgroundLayerColor(Colors.black12);
  //   SVProgressHUD.setBackgroundColor(Colors.black12);
  //   SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.black);
  //   SVProgressHUD.show();
  // }
  //
  // static void hideLoader() {
  //   SVProgressHUD.dismiss();
  // }


  static void showLoader() {

    double _currentValue = 0;
  }
}
