import 'dart:io';

void main(){
  String str= stdin.readLineSync()!;

  int count = 0; // use for check thr vowel

  for(int i=0; i<str.length;i++){  // for check the character
    String ch = str[i].toLowerCase(); // convert uppercase to lowercase

    if('aeiou'.contains(ch)){  //Is the character in aeiou or not?
      count++;  //When a vowel is found, the count will increase by 1.
    }
  }
  print("Number of vowel: $count");

}

