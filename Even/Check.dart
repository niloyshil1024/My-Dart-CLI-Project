void main(){
//  greet("Reyan");
//   greet("Romio");
//   greet("Sruti");int a,b;
int a= 5;
int b=10;
print(add(a, b));
print(greet("Sara"));  // Hello Sara
log("App started");   // App started
}
int add(int a, int b){
 return a+b;
}
String greet (String name) { return "Hello $name"; }
void   log   (String msg)  { print(msg); }