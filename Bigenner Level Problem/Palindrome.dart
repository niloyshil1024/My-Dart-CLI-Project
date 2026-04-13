import 'dart:io';

void main(){

  print('Enter the number : ');
  String str= stdin.readLineSync()!;

  String rev = str.split('').reversed.join('');

  if(str==rev){
    print('It is palindrome');
  }else{
    print('It is not a palindrome');
  }
}