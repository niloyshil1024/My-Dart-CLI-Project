import "dart:core";
import "dart:io";

int getCount(String inputStr){
  int count = 0;
  List<String> vowel=["a","e","i","o","u"];

  for(int i=0;i<inputStr.length;i++){
    if(vowel.contains(inputStr[i])){
      count++;
    }
  }
  //your code here
  return count;
}
void main(){
  String inputStr = "hello";
  print(getCount(inputStr));
}