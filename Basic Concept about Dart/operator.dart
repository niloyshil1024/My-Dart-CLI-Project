void main()
{
  int a = 15;
  int b = 4;
  //var result = a/b;
  var result = a~/b;  //it gives int value no double value
  print(result);
  String name = 'Niloy';
  var output = name is String; //Type test operator
  print(output);
  String colour = 'red';
  var found = colour=='red'?'colour is red':'Unknown';//Ternary operation
  print(found);
  int? age;
  var find = age??25;
  print(find);
}