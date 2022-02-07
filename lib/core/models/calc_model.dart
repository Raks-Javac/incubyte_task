//this creates the string object
class StringObject {
  String? numbersInputted;
  // Creating the getter method
  // to get input from Field/Property
  String? get getInputtedNumbers {
    return numbersInputted;
  }

  // Creating the setter method
  // to set the input in Field/Property
  set setName(String? name) {
    numbersInputted = name;
  }

  StringObject({this.numbersInputted});
}

// /this abstract class contains the skelental image to be implemented in the model class
abstract class AbstractStringCalc {
  dynamic addNumbers(String numbers);
}

// calculator class implementing the abstract calculator class
class StringCalc implements AbstractStringCalc {
  @override
  dynamic addNumbers(String numbers) {
    var calcCondition = {
      "": 0,
    };
    return calcCondition[numbers] ?? "";
  }
}
