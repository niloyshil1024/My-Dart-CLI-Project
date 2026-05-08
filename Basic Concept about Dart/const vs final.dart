import 'dart:ffi';

void main()
{
  //final 
  final int  age = 21;   // ekbar set korlei hoy, poroborti te change kora jabena

  print(age);
  //const
  const double pi = 3.1416; //// fixed constant, compile time-e fixed
//const
//const diye declare kora variable holo compile-time constant.

//Mane, ei variable er value compile time-e fixed thakte hobe (program cholte thaka shuru howar agei).

//const variable er value change kora jabe na, ar seta immutable.

  print(pi);
}
class example {
   final int  age = 21;
   static double pi = 3.1416;
}


//const diye declare kora value gulo immutable object hoy.

//final er value immutable hote pare, kintu initialization runtime e hoi.