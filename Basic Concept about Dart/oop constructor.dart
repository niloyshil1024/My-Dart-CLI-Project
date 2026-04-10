void main(){
var obj = Example('learning-dart');// process 1
//var obj = Example(name:'learning-dart'); //process 2

}

class Example{
  String name;
  Example(this.name){ //process 1
  //Example({required this.name}){ //process 2
    print("This is my default constructor");
    print(name);
  }
}