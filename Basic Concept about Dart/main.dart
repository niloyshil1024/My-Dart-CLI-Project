void main()
{
  print("Hello World !");
  int a = 35;
  print(a);
  double x=2;
  print(x);
  String name = 'Niloy';
  print(name);
  bool value = true;
  print(value);

// List
List mylist = ['one','two','three'];
print(mylist);
//Map
Map <String,dynamic>myMap = {
  'Name':'Niloy',
  'Age':'21',
  'Age':'20',
};
print(myMap);
//Set
Set mySet = {'one','two','three','three'};
print(mySet);
//rune
final nameTwo='Niloy';
print(nameTwo.codeUnits);
Runes input = Runes('\u{1f49b}');
print(String.fromCharCodes(input));

}