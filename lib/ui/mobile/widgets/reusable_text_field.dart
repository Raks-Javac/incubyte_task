
import 'package:flutter/material.dart';
import 'package:incubyte_string_calc/core/utils/constants.dart';
import 'package:incubyte_string_calc/core/utils/ui_helper.dart';

class StringCalcReusableTextField extends StatelessWidget {
  final String? label;
  final Function(String)? onChanged;
  final TextEditingController? fieldController;
  final String? hintText;
  final Widget? prefix;
  final Color? labelColor;
  final Function(String?)? onSaved;
  final VoidCallback? onEditingComplete;
  final TextStyle? hintTextStyle;
  final String? Function(String?)? validator;
  final bool? shouldBeWhite;
  final double? letterspacing;
  final Widget? suffixWidget;
  final bool? obscure;
  final String obscureCharacter;
  final TextInputType? keyboardType;

  // ignore: prefer_const_constructors_in_immutables
  StringCalcReusableTextField({
    Key? key,
    this.prefix,
    this.obscure,
    this.fieldController,
    this.letterspacing = 1.5,
    this.keyboardType,
    this.obscureCharacter = "●",
    this.onChanged,
    this.suffixWidget,
    this.hintText,
    this.onSaved,
    this.onEditingComplete,
    this.validator,
    this.shouldBeWhite,
    this.labelColor,
    this.hintTextStyle,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "$label",
            style: const TextStyle(
              fontFamily: 'VL',
              color: Colors.black,
              fontSize: UIHelper.mediumfontSize,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        UIHelper.verticalSpaceSmall,
        Theme(
          data: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
              contentPadding:
                  EdgeInsets.only(left: screenAwareSize(20, context)),
              border: ConstantsStore.kTextFieldBlackStyling,
              focusedBorder: ConstantsStore.kYellowTextFieldStyling,
              enabledBorder: ConstantsStore.kTextFieldBlackStyling,
              errorBorder: ConstantsStore.kRedTextFieldStyling,
              focusedErrorBorder: ConstantsStore.kRedTextFieldStyling,
            ),
          ),
          child: TextFormField(
            scrollPadding: EdgeInsets.zero,
            obscuringCharacter: obscureCharacter,
            cursorWidth: 0.8,
            cursorColor: ConstantsStore.kTriviaBlack,
            cursorHeight: screenAwareSize(25, context),
            controller: fieldController,
            style: TextStyle(
              fontSize: UIHelper.mediumfontSize,
              fontWeight: FontWeight.bold,
              letterSpacing: letterspacing,
              fontFamily: "VL",
            ),
            keyboardType: keyboardType ?? TextInputType.number,
            onChanged: onChanged,
            autocorrect: false,
            validator: validator,
            obscureText: obscure ?? false,
            onEditingComplete: onEditingComplete,
            onSaved: onSaved,
            decoration: InputDecoration(
              // fillColor: ,
              filled: true,
              border: OutlineInputBorder(
                gapPadding: 1.0,
                borderRadius: BorderRadius.circular(1),
              ),
              suffixIcon: suffixWidget ?? const Text(""),
              prefix: prefix ?? const Text(""),
              hintText: hintText,
              errorStyle: ConstantsStore.kSmallTextStyle.copyWith(
                color: ConstantsStore.kTriviaRed,
                fontWeight: FontWeight.bold,
              ),
              hintStyle: hintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
