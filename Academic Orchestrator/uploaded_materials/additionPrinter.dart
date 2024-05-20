// Write a Dart program to perform addition of two
// different numbers.

import 'dart:io';

void main() 
{
  print("Welcome to the Addition Calculator");
  print("Let's add the numbers.");

  stdout.write("Enter the first number: ");
  int firstNumber = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  int secondNumber = int.parse(stdin.readLineSync()!);

  int addition = firstNumber + secondNumber;

  print("The addition of $firstNumber and $secondNumber is: $addition");
}
