import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../theme/style.dart';

class CButton extends StatelessWidget {
  final String? title;
  final AnimationController? btnController;
  final Animation? btnAnim;
  final VoidCallback? onBtnSelected;
  Color? color;
  Color? textColor;
  double radius = 50.0;
  double paddingLeft = 25.0;
  double paddingRight = 25.0;
  double height = 0;
  double width = 0;
  TextStyle? btnStyle;
  LinearGradient? gradient;

  CButton(
      {Key? key,
      this.color,
      this.textColor,
      this.title,
      this.btnController,
      this.btnAnim,
      this.onBtnSelected,
      this.radius = 50.0,
      this.height = 0,
      this.width = 0,
      this.btnStyle,
      this.gradient,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (btnAnim != null)
        ? AnimatedBuilder(
            builder: _buildBtnAnimation,
            animation: btnController!,
          )
        : _buildBtnNormal(context);
  }

  Widget _buildBtnAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        child: Container(
          width: btnAnim!.value,
          height: (height != 0) ? height : 50,
          alignment: FractionalOffset.center,
          decoration: BoxDecoration(
            // color: (color==null)?colors.primary:color,
            gradient: gradient ??  LinearGradient(colors: [colors.yellowTemp,colors.yellowTemp]),
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
          child: btnAnim!.value > 75.0
              ? Text(title!, textAlign: TextAlign.center,
            style: Style(context).normalWhiteText13().copyWith(color: colors.whiteTemp),
          )
              : const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(colors.whiteTemp),
                ),
        ),
        onTap: () {
          onBtnSelected!();
        },
      ),
    );
  }

  Widget _buildBtnNormal(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width != 0 ? width : MediaQuery.of(context).size.width,
        height: height != 0 ? height : 50,
        alignment: FractionalOffset.center,

        decoration: BoxDecoration(
          color: (color==null)?colors.primary:color,
          gradient: gradient ??  LinearGradient(colors: [Theme.of(context).colorScheme.primaryApp, Theme.of(context).colorScheme.primaryApp]),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Center(
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: btnStyle?.copyWith(color:colors.whiteTemp) ??
                  Style(context).normalWhiteText13()
              ,
            ),
          ),
        ),
      ),
      onTap: () {
        onBtnSelected!();
      },
    );
  }
}
