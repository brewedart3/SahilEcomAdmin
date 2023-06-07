import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/color.dart';
import '../theme/style.dart';


class CTextField extends StatefulWidget {
  String? hintText = "";
  String? lable;
  TextEditingController? controller = TextEditingController();
  TextInputType? keyboardType = TextInputType.text;
  TextInputFormatter? inputFormatters;
  double margin = 20.0;
  int line = 1;
  bool readOnly = false;
  bool dropDown = false;
  Function? onPressed = () => {};
  final FocusNode _focus = FocusNode();
  IconData? icon;
  bool suffix = false;
  bool obscureText = false;
  bool passwordToggle = false;
  List<String>? items;
  List<TextInputFormatter>? textInputFormatter=[];
  int maxLength = 0;
  double paddingStart = 25.0;
  double paddingEnd = 25.0;

  CTextField(
      {Key? key,
      this.hintText,
      this.lable,
      this.controller,
      this.keyboardType,
      this.inputFormatters,
      this.dropDown = false,
      this.items,
      this.margin = 20.0,
      this.readOnly = false,
      this.onPressed,
      this.icon,
      this.suffix = false,
      this.obscureText = false,
      this.passwordToggle = false,
      this.maxLength = 0,
      this.paddingStart = 0,
      this.paddingEnd = 0,
      this.textInputFormatter,
      this.line = 1})
      : super(key: key);



  @override
  _CTextFieldState createState() => _CTextFieldState();
}

class _CTextFieldState extends State<CTextField> {
  @override
  Widget build(BuildContext context) {
    return (!widget.dropDown)
        ? Padding(
      padding: EdgeInsetsDirectional.only(
        top: 0.0,
        start: widget.paddingStart,
        end: widget.paddingEnd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (widget.lable != "")
              ? Text(
            widget.lable!,
            style:  Style(context).normalBlackText12(),
          )
              : Container(),
          (widget.lable != "")
              ? const SizedBox(
            height: 5,
          )
              : Container(),
          TextFormField(
            keyboardType: widget.keyboardType,
            textInputAction: TextInputAction.next,
            controller: widget.controller,
            enabled: !widget.readOnly,
            maxLines: widget.line,
            obscureText: widget.obscureText,
            obscuringCharacter: "*",
            textCapitalization: TextCapitalization.sentences,
            maxLength: (widget.maxLength != 0) ? widget.maxLength : null,
            cursorColor: colors.primary,
            inputFormatters:widget.textInputFormatter,
            style: Style(context).normalBlackText12(),
            decoration: InputDecoration(
              fillColor: Theme.of(context).colorScheme.bgColor,
              counterText: '',
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color:  Theme.of(context).colorScheme.white, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryApp, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide:
                 BorderSide(color: Theme.of(context).colorScheme.white, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              suffixIcon: (widget.passwordToggle)?GestureDetector(
                onTap: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
                child: Icon(
                  widget.obscureText
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: Theme.of(context).colorScheme.lightBlack2,
                  semanticLabel: widget.obscureText
                      ? 'show password'
                      : 'hide password',
                ),
              ):null,
              prefixIcon: (widget.icon != null)
                  ? Icon(
                (widget.icon == null)
                    ? Icons.alternate_email_outlined
                    : widget.icon!,
                color: Theme.of(context).colorScheme.fontColor,
                size: 17,
              )
                  : null,
              hintText: widget.hintText,
              hintStyle: Style(context).normalBlackText10().copyWith(color: Colors.grey),
              // filled: true,
              // fillColor: Theme.of(context).colorScheme.lightWhite,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 10, vertical: (widget.line == 1) ? 3 : 10),
              prefixIconConstraints: BoxConstraints(minWidth: 30, maxHeight: 20),
              // focusedBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Theme.of(context).colorScheme.fontColor),
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
            ),
          ),
        ],
      ),
    )
        : Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 10.0,
        start: 25.0,
        end: 25.0,
      ),
      child: PopupMenuButton<String>(
        child: TextFormField(
          keyboardType: widget.keyboardType,
          textInputAction: TextInputAction.next,
          controller: widget.controller,
          focusNode: widget._focus,
          textCapitalization: TextCapitalization.sentences,
          enabled: false,
          cursorColor: colors.primary,
          style:  TextStyle(
              color: Theme.of(context).colorScheme.darkFont,
              fontSize: 14.0,
              fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            fillColor: Theme.of(context).colorScheme.bgColor,
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide:
               BorderSide(color:  Theme.of(context).colorScheme.white, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryApp, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Theme.of(context).colorScheme.white, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            suffixIcon: (widget.icon != null) ? Icon(
              (widget.icon == null)
                  ? Icons.alternate_email_outlined
                  : widget.icon!,
              color: Colors.black,
              size: 17,
            ): null,
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Theme.of(context).colorScheme.fontColor,
                fontWeight: FontWeight.normal),
            // filled: true,
            // fillColor: Theme.of(context).colorScheme.lightWhite,
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            prefixIconConstraints: const BoxConstraints(minWidth: 40, maxHeight: 25),
            // focusedBorder: OutlineInputBorder(
            //   borderSide: BorderSide(color: Theme.of(context).colorScheme.fontColor),
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
          ),
        ),
        onSelected: (String value) {
          widget.controller!.text = value;
        },
        itemBuilder: (BuildContext context) {
          return widget.items!.map<PopupMenuItem<String>>((String value) {
            return PopupMenuItem(
                value: value,
                child: Text(
                  value,
                  style:  Style(context).regularBlackText14(),
                ));
          }).toList();
        },
      ),
    );
  }
}

