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
  bool checkVariableType(String valueToBeChecked);
}

// calculator class implementing the abstract calculator class
class StringCalcModel implements AbstractStringCalc {
  @override
  dynamic addNumbers(String? numbers) {
    List<String> numberList2 = numbers!.split(",");
    if (numberList2.isEmpty) {
      return 0;
    }
    if (numberList2.length >= 2) {
      var sum = 0;
      for (var element in numberList2) {
        sum += int.parse(element);
      }
      return sum;
    }
  }

  @override
  bool checkVariableType(String valueToBeChecked) {
    return true;
  }
}

var regStringCheckPattern = RegExp(r'x+');
