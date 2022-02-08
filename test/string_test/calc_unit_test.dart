import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_string_calc/core/models/calc_model.dart';

//this file contains the testing for the model classes
void main() {
  StringCalcModel? stringTestClassObject;
  setUp(() {
    stringTestClassObject = StringCalcModel();
  });
  group("String Calculator Testing", () {
    // test("test", body)

//this checks for an empty string
    test("testing for an empty string", () {
      // assigning an empty string to the add function
      final _emptyStringCheck = stringTestClassObject!.addNumbers("");
      expect(_emptyStringCheck, 0);
    });

    test("test for value inputted greater than 2 and seperated with comma", () {
      final _valueGreaterThan2 = stringTestClassObject!.addNumbers("8,12");
      expect(_valueGreaterThan2, 20);
    });

    test("test to check if the number is an integer", () {
      final _isVariableInteger = stringTestClassObject!.variableIsInteger("h");
      expect(_isVariableInteger, false);
    });
  });

  test("test for negative numbers", () {
    final _testForNextLineSum = stringTestClassObject!.addNumbers("1,-4");
    expect(_testForNextLineSum, "negative number is not allowed");
  });
}
