import 'dart:math';

class ArmstrongNumbers {
  // Put your code here
  bool isArmstrongNumber(int number) {
    // splitting the argument number to an array of string, to find out what's
    // the "length" of the number
    List<String> arr = number.toString().split("");
    num numberLength = arr.length;
    num sum = 0;

    arr.forEach((element) {
      sum += pow(int.parse(element), numberLength);
    });

    return sum == number;
  }
}
