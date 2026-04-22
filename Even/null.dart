void main(){
  //non-nullable
  int age = 22;
  age= 23;
  print(age);

  //nullable
  int? age1;
  age1= 30;
  print(age1);
  age1 = null;
  print(age1);

  //late keyword 
late String description;
description = 'Hello';
print(description);
}