import 'package:flutter/material.dart';
import 'package:incubyte_string_calc/core/utils/constants.dart';
import 'package:incubyte_string_calc/core/utils/ui_helper.dart';
import 'package:incubyte_string_calc/core/view_models/calc_view_model.dart';
import 'package:incubyte_string_calc/ui/mobile/widgets/reusable_button.dart';
import 'package:incubyte_string_calc/ui/mobile/widgets/reusable_text_field.dart';
import 'package:provider/provider.dart';

class StringCalcHome extends StatelessWidget {
  const StringCalcHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantsStore.kTriviaGreenColor,
        title: const Text(
          "String Calc",
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(
          right: 20.0,
          left: 20.0,
        ),
        child: SingleChildScrollView(
          child:
              Consumer<StringProvider>(builder: (context, stringProvider, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StringCalcReusableTextField(
                  label: "Input your digits",
                  fieldController: stringProvider.stringNumberController,
                  onChanged: (String val) {
                    stringProvider.changeTextInUiToControllerValue(val);
                  },
                ),
                UIHelper.verticalSpaceMedium,
                StringCalcReusableButton(
                  buttonText: "Calculate",
                  buttonTextColor: Colors.white,
                  buttonColor: ConstantsStore.kTriviaGreenColor,
                  onPressed: () {
                    stringProvider.addNumbers();
                  },
                ),
                UIHelper.verticalSpaceMedium,
                Text(
                  "Result : ",
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
