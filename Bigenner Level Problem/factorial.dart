import 'dart:io';

void main(){
  print("Enter the number : ");
  int n=int.parse(stdin.readLineSync()!);
  /*int fact=1;
  for(int i=1;i<=n;i++){
    fact=fact*i;
  }
  print(fact);*/



  for(int i=1;i<=10;i++){
    print(n*i);
  }
}