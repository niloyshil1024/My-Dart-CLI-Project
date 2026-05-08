import 'dart:io';

void main(){
  String str=stdin.readLineSync()!;

  String rev= str.split('').reversed.join('');
  print("Reversed string : $rev");
}