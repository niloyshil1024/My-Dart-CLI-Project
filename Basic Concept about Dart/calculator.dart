import 'dart:io';
void main()
{
  print("Simple Calculator");
stdout.write('Enter first number: ');
double num1 = double.parse(stdin.readLineSync()!);

stdout.write('Enter second number: ');
double num2 = double.parse(stdin.readLineSync()!);

print('Choose operator:  +,-,*,/');
String? operation = stdin.readLineSync();

double result;

if(operation == '+'){
  result = num1+num2;
} else if (operation == '-') {
    result = num1 - num2;
  } else if (operation == '*') {
    result = num1 * num2;
  } else if (operation == '/') {
    if (num2 != 0) {
      result = num1 / num2;
    } else {
      print('Error: Division by zero is not allowed.');
      return;
    }

  }else{
 print('Invalid operation!');
  return;
  }
print('Result: $result');
}