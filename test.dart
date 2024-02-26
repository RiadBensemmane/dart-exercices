import 'dart:math';
import 'dart:io';
void main (){
  // var firstname = "moussab";
  // String lastname = "Badla";
  // print("Full name is $firstname, $lastname");

  // print("List = ${lastname.codeUnits} ");
  // Random random = new Random();
  

  // int randomnumber = random.nextInt(10);

  // print(randomnumber);

  // Animal a = Animal(name: 'zendev', numberOflegs: 5, lifeSpan: 9);

  // a.display();

  DateTime start = DateTime.now();
  print(start);
  stdin.readLineSync();
  DateTime end = DateTime.now();
  print(end);
  
  Duration dur = end.difference(start);
  print(dur.inSeconds + 5);

}

class Animal{

  String? name;
  int? numberOflegs;
  int? lifeSpan;

  Animal({

    required this.name,
    this.numberOflegs,
    this.lifeSpan
  });
  void display(){
    print("animal name: $name");
    print("Number of legs: $numberOflegs");
    print("Life span: $lifeSpan");
  }
}

