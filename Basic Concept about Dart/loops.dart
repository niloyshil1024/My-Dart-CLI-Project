void main()
{
  List contactlist =[
    '018660000',
    '018340000',
    '018560000',
    '018450000',
  ];
  for(int i=0;i<contactlist.length;i++){
   print(contactlist[i]);
  }
  //for in loop
  List mylist = ['A','B','C','D'];
  for (var element in mylist){
    print(element);
  }
  var namelist = [
    {'name':'Name one'},
     {'name':'Name two'},
      {'name':'Name three'},
  ];
  //for each
  namelist.forEach((element){print(element['name']);});
  int j=1;
  int value = 5;
  //while
  while(j<=value){
    print(j);
    j++;
  }
   int k=1;
  int number = 3;
  do{
print(k);
k++;
  }while(k<=number);
}