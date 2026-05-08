import 'dart:io';

void main(){
  int sum=0;
  int n=int.parse(stdin.readLineSync()!);  // scanf("%d", &n);
  for(int i=0;i<=n;i++){
     sum=sum+i;
  }
  print(sum);

}


// 5=1+2+3+4+5=15