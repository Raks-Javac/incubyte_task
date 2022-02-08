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
      final emptyStringCheck = stringTestClassObject!.addNumbers("");
      expect(emptyStringCheck, 0);
    });
  });
}
