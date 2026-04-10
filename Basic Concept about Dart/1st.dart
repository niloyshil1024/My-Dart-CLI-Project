import 'dart:io';
void main()
{
  stdout.write('Enter your Nickname : ');
  String? name = stdin.readLineSync();

  stdout.write('Enter your age : ');
  String? ageinput = stdin.readLineSync();
  int age = int.parse(ageinput!);

stdout.write('Enter your currentyear : ');
  String? yearinput = stdin.readLineSync();
  int currentyear = int.parse(yearinput!);

  int birthyear = currentyear - age; 

  print('Hi $name, you are $age years old, your current year is $currentyear, So your birthyear is $birthyear ');
}