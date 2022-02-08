//this is the viewmodel class
import 'package:flutter/material.dart';
import 'package:incubyte_string_calc/core/models/calc_model.dart';

class StringProvider extends ChangeNotifier {
  late StringObject stringObject;
  //this creates the controller for the textFeild in the view/UI
  TextEditingController stringNumberController = TextEditingController();

  //this functions clears the input in the text field
  void clearCalcTextField() {
    stringNumberController.clear();
  }

//this functions takes the value from the UI or view into the String object
  void changeTextInUiToControllerValue(String? val) {
    //parsing the controller
    stringObject =
        StringObject(numbersInputted: stringNumberController.text.trim());
    stringObject.setName = val;
    notifyListeners();
  }

//this is the addUp number string
  void addNumbers() {
    StringCalcModel().addNumbers(stringObject.numbersInputted);

    clearCalcTextField();
  }
}
