import 'dart:io';

void main (){
   print('Enter the celcious scale');
   /*double celcious = double.parse(stdin.readLineSync()!);
   double fehrenhite = (celcious*9/5)+32;
   print('Fehrenhite = $fehrenhite');*/

    double fehrenhite = double.parse(stdin.readLineSync()!);
   double celcious = (fehrenhite - 32)*5/9;
   print('Celcious = $celcious');


}