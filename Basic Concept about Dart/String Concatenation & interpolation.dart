void main()
{
  String a = ' We ';
  String b = ' Are ';
  String c = ' Learning ';
  String d = ' Dart ';

  //String Literals
  String e = ' We ' ' Are '  ' Learning ' ' Dart ';
  //step 1
  print(a + b + c + d);
  //step 2
  print("$a $b $c $d");
  //step 3
  print(e);
  //step 4
  List<String> f = [' We ',' Are ' ,' Learning ' ,' Dart '];
  print(f.join());
}