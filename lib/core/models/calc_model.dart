//this creates the string object
import 'dart:typed_data';

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
  bool variableIsInteger(String valueToBeChecked);
}

// calculator class implementing the abstract calculator class
class StringCalcModel implements AbstractStringCalc {
  @override
  dynamic addNumbers(String? numbers) {
    List<String> numberList2 = [];

    if (numbers![1] == ",") {
      print("this block1 of code is working");
      numberList2 = numbers.split(",");
      print(numberList2);
      return sumList(numberList2);
    }
    if (numbers[1] == "\n") {
      print("this block2 of code is working");
      numberList2 = numbers.split("\n");
      return sumList(numberList2);
    }
    //checking for delimeters
    if (numbers[1] == RegExp("[^;]+(?=;[^;]*)") ||
        numbers[0] == RegExp("[^;]+(?=;[^;]*)")) {
      numberList2 = numbers.split(RegExp("[^;]+(?=;[^;]*)"));
      return sumList(numberList2);
    }

    if (numberList2.isEmpty) {
      return 0;
    }
  }

//this function checks the type of the varibale in run time if its an integer that we can perform an operation on
  @override
  bool variableIsInteger(dynamic valueToBeChecked) {
    return (valueToBeChecked.runtimeType == int) ? true : false;
  }

  dynamic sumList(List<String> numberList) {
    var sum = 0;
    int valueToInteger = 0;
    if (numberList.length >= 2) {
      //this loop helps handle any amount of number inputed
      for (var element in numberList) {
        //this try and catch block is to check if the list we are looping through doesnt contain a character we cant perform addition on
        //and catches the error then displays it in the console
        try {
          valueToInteger = int.parse(element);
        } catch (e) {
          print(e);
        }
        sum += valueToInteger;
      }

      return sum;
    }
  }
}
