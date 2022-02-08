import 'package:flutter/material.dart';
import 'package:incubyte_string_calc/core/utils/constants.dart';
import 'package:incubyte_string_calc/core/utils/ui_helper.dart';

class StringCalcReusableButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttonText;
  final Color buttonColor;
  final double? height;
  final Color buttonTextColor;
  final TextStyle? textStyle;
  const StringCalcReusableButton({
    Key? key,
    this.onPressed,
    this.height,
    this.buttonTextColor = Colors.black,
    required this.buttonText,
    required this.buttonColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle ??
            ConstantsStore.kMediumTextStyle.copyWith(
                fontWeight: FontWeight.w600,
                fontFamily: "VL",
                color: buttonTextColor,
                fontSize: screenAwareSize(22, context)),
      ),
      minWidth: deviceWidth(context) / 1.05,
      height: height ?? screenAwareSize(70, context),
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
