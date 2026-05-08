

void main()
{
  //how to define a function
  //addTwoNumbers(){
  // print(10+20);
 //}
 //addTwoNumbers();

  //arrow function
arrowFunction()=>print("This is my arrow function");
arrowFunction();
  //return something for a function

  example(){
    return 10+10;
  }
    print(example());
  

  //parameterized function

  addTwoNumbers(int num1,int num2){
   print(num1+num2);
 }
 addTwoNumbers(20,30);
 addTwoNumbers(25,25);
 addTwoNumbers(15,35);


  //optional positional parameter []

 // myfunction(a,b,c,d,[e,f]){
//print(a);
//print(b);
//print(c);
//print(d);
//print(e);
//print(f);
  //}
  //myfunction(23, 24, 28, 1);

  //optional named parameter
 myfunction(a,b,c,d,{e,f}){
print(a);
print(b);
print(c);
print(d);
print(e);
print(f);
  }
  myfunction(20, 25, 30, 35, e:40, f:45);
  //higher order function
  mainfunction()();
}
mainfunction(){
  return ()=>print("return a function"); 
}