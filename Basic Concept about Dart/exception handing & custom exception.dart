void main()
{
  // Exception handing- try,on,catch,stack-trace, finally

  // format exception
  try{
  int result = int.parse('44s');
  print(result.runtimeType);
  } catch (e,s){ //try catch use krle output e programme crash kre na
    print(s);
  }
  // Integer division by zero exception
   try{
var answer = 10~/0;
print(answer);
} on IntegerDivisionByZeroException{ //jdi kono exception create hoi tokhon user ke message dite (on) use kra hoi
//on ekbar handle krar por output catch e ar dekha jbe na
    print("can't devide by zero");
  }
catch (e){ 
    print(e);
  }finally{
    print('always connected');
  }
 try {
    value(3); // try er moddhe dite hobe
  } catch (e) {
    print('Custom Exception: $e');
  }
}
// custom exception
  class value implements Exception{
    String lessThenFive(){
      return 'value can not be less than five';
    }
     String greaterThenTen(){
      return 'value must be between 5-10';
    }
value(int v){
  if(v < 5){
    throw this.lessThenFive();
  }else if(v > 10){
    throw this.greaterThenTen();
}
    
  }
  }