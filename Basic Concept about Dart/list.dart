void main()
{
  List<String>mylist = ['a','b','c','d'];
  print(mylist);
  print(mylist.length);
  print(mylist[2]);
  mylist.add('e');
  print(mylist);
  mylist.addAll(['f','g','h']);
print(mylist);
//insert

mylist.insert(0, 'aa');
print(mylist);

mylist[1]='bb';
print(mylist);
mylist.replaceRange(0, 2, ['aa','bb','cc','dd']);
print(mylist);
}