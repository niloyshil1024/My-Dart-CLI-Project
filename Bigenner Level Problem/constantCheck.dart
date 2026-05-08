import 'dart:io';

void main() {
  print("Enter a string:");
  String str = stdin.readLineSync()!;

  int count = 0;
  for (int i = 0; i < str.length; i++) {
    String ch = str[i].toLowerCase();
    if (ch.contains(RegExp(r'[a-z]')) && !'aeiou'.contains(ch)) {
      count++;
    }
  }

  print("Number of constants: $count");
}