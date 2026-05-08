import 'dart:io';

void main(){
  int n=int.parse(stdin.readLineSync()!);
  bool isprime=true;
  for(int i=2;i<n;i++){
  if(n%2==0){
    isprime=false;
  break;
  }
  }
   if(isprime && n>1){
    print('Prime number');
  }else{
    print('Not a prime number');
  }
  
}