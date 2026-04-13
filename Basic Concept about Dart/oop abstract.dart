void main()
{
  var son = Son();
 son.methodOne();
}

abstract class Father {
  int age = 50;
  methodOne(){
    print('This is method One');
  }
  methodTwo(){
    print('This is method Two');
  }
}
class Son extends Father{
String name = 'son';
}