bool isEven(int number) => number % 2==0;
bool isEvenBitwise(int number) => (number & 1) == 0;
void main(){
  int number=17;
if(isEven(number)){
  print("Even");
}else{
  print("Odd");
}if(isEvenBitwise(number)){
  print("Even");
}else{
  print("Odd");
}
}