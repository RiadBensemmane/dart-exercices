import 'dart:io';
void main (){

  List<Laptop> pcs = [];

  for (int i = 1; i <=3; i++){
    print("\tLaptop $i: ");
    String? id = input("Enter the id: ");
    String? name = input("Enter the name: ");
    String? ram = input("Enter the amount of ram: ");
    pcs.add(Laptop(id: id, name: name, ram: ram));
  }

  for (Laptop p in pcs){
    print("\n");
    p.display();
  }



}

String? input(String? message){
  print(message);
  return stdin.readLineSync();
}

class Laptop{

  String? id;
  String? name = '';
  String? ram = '';

  Laptop({required this.id, required this.name, required this.ram});

  void display(){
    print("ID: ${this.id}");
    print("Name: ${this.name}");
    print("Ram: ${this.ram}");
  }
}