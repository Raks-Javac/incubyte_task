import 'package:flutter/material.dart';
import 'package:incubyte_string_calc/core/utils/ui_helper.dart';

class ConstantsStore {
  static const Color kTriviaGreenColor = Colors.green;
  static const Color kTriviaBlack = Colors.black;
  static const Color kTriviaRed = Color(0xFFB80016);
  static const Color kTriviaTransparentColor = Colors.transparent;

  static const String kAppName = "Football Trivia";
  static const TextStyle kSmallTextStyle =
      TextStyle(fontFamily: "VL", fontSize: UIHelper.smallfontSize);
  static const TextStyle kLargeTextStyle =
      TextStyle(fontFamily: "VL", fontSize: UIHelper.largefontSize);
  static const TextStyle kMediumTextStyle =
      TextStyle(fontFamily: "VL", fontSize: UIHelper.mediumfontSize);
  static const kRedTextFieldStyling = OutlineInputBorder(
      borderRadius: kTextFieldBorder,
      borderSide: BorderSide(color: kTriviaRed));

  static OutlineInputBorder kYellowTextFieldStyling = const OutlineInputBorder(
      borderRadius: kTextFieldBorder,
      borderSide: BorderSide(color: kTriviaGreenColor));
  static OutlineInputBorder kTextFieldBlackStyling = OutlineInputBorder(
      gapPadding: 1.0,
      borderRadius: kTextFieldBorder,
      borderSide: BorderSide(width: 0.8, color: Colors.black.withOpacity(0.4)));
  static const kTextFieldBorder = BorderRadius.all(
    Radius.circular(10),
  );

  String emptyEmailField({String? fieldType = "Email"}) =>
      '$fieldType field cannot be empty!';
  static const String emptyTextField = 'Field cannot be empty!';
}
