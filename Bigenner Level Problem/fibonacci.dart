import 'dart:io';

void main(){
  int a=0;
  int b=1;
   print('Enter the number : ');
   int n=int.parse(stdin.readLineSync()!);
   for(int i=0;i<=n;i++){
    print(a);
    int next=a+b;
   a=b;
   b=next;
   }
   
}