import 'dart:io';

void main(){
  print('Enter the number : ');
  int number1= int.parse(stdin.readLineSync()!);
   int number2= int.parse(stdin.readLineSync()!);
    int number3= int.parse(stdin.readLineSync()!);
    int largest;
if(number1>number2 && number1>number3){
   largest = number1;
}else if(number2>number1 && number2>number3){
largest = number2;
}else{
  largest = number3;
}
print("Largest number is: $largest" );
}