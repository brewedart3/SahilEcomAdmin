import 'package:flutter/material.dart';
import 'package:sahilweb/theme/color.dart';
import 'package:sahilweb/theme/string.dart';
import 'package:sahilweb/theme/style.dart';
import 'package:sahilweb/utils/Device.dart';
import 'package:sahilweb/utils/constants.dart';
import 'package:lottie/lottie.dart';

import 'button.dart';

class InfoDialogBox extends StatefulWidget {
  final String? title, descriptions, lottiePath, btnTitle, iconPath;
  final VoidCallback closePress;
  final VoidCallback buttonPress;
  bool titleCenter = false;
  bool closeButtonVisible = true;

  InfoDialogBox(
      {Key? key,
      this.title,
      this.descriptions,
      this.btnTitle,
      this.lottiePath,
      this.iconPath,
      this.closeButtonVisible = true,
      required this.closePress,
      required this.buttonPress,
      this.titleCenter = false})
      : super(key: key);

  @override
  _InfoDialogBoxState createState() => _InfoDialogBoxState();
}

class _InfoDialogBoxState extends State<InfoDialogBox> {
  @override
  Widget build(BuildContext context) {
    return contentBox(context);
  }

  contentBox(context) {
    return Center(
      child:  Container(
        padding: EdgeInsets.all(Size_constants.calanderIcon),
        margin: EdgeInsets.symmetric(horizontal: Device.get().isTablet ? 100 : 30),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Theme.of(context).colorScheme.cardBack,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Material(
          color: Theme.of(context).colorScheme.cardBack,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: [
                  const Spacer(),
                  (widget.closeButtonVisible)
                      ? InkWell(
                      onTap: () {
                        widget.closePress.call();
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        size: 22,
                      ))
                      : Container(),
                ],
              ),
              (widget.lottiePath != null && widget.lottiePath!.isNotEmpty)
                  ? SizedBox(
                width: Size_constants.dashboardCardHeight,
                height: Size_constants.dashboardCardHeight,
                child: Lottie.asset(widget.lottiePath!),
              )
                  : (widget.iconPath != null && widget.iconPath!.isNotEmpty)
                  ? Image.asset(
                widget.iconPath!,
                width: Size_constants.dashboardCardHeight,
                height: Size_constants.dashboardCardHeight,
              )
                  : Image.asset(
                Images.right_icon,
                width: Size_constants.dashboardCardHeight,
                height: Size_constants.dashboardCardHeight,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.title!,
                style: Style(context).boldprimaryText16(),
                textAlign:
                (widget.titleCenter) ? TextAlign.center : TextAlign.start,
              ),
              SizedBox(height: 10,),
              (widget.descriptions == "")
                  ? Container()
                  : Text(
                widget.descriptions!,
                style: Style(context).normalBlackTextSemiBold11(),
                textAlign: TextAlign.center,
              ),
              (widget.descriptions == "")
                  ? Container()
                  : SizedBox(
                height: 7,
              ),
              (widget.btnTitle == "")
                  ? Container()
                  : SizedBox(
                height: 7,
              ),
              (widget.btnTitle == "")
                  ? Container()
                  : CButton(
                title: widget.btnTitle,
                width: Size_constants.buttonWidthLogout,
                height: Size_constants.listItemHeight,
                radius: 150,
                onBtnSelected: widget.buttonPress,
                btnStyle: Style(context).boldwhiteText14().copyWith(color: colors.whiteTemp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
