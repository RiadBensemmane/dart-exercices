import 'dart:io';

void main (){
  
  print("Formula= (p * t * r) / 100");

  print("Enter the value of p: ");
  
  dynamic p = stdin.readLineSync();
  p = double.parse(p);

  print("Enter the value of t: ");

  dynamic t = stdin.readLineSync();
  t = double.parse(t);

  print("Enter the value of r: ");

  dynamic r = stdin.readLineSync();
  r = double.parse(r);
  
  double res = (p * t * r) / 100;
  

  print("The result is : $res");


}