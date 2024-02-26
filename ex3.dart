import 'dart:io';
void main (){

  
  String? name = input("Enter the name: ");
  dynamic age = input("Enter the age: ") ?? '';
  dynamic isActive;

  try{
    age = int.parse(age);
  }
  catch(e){
    print("The age must be an integer !");
    exit(1);
  }

  isActive = input("is the user active ? : (y-yes / n-no)");

  if (isActive.toLowerCase() == 'no' || isActive.toLowerCase() == 'n'){
    isActive = false;
  }

  else isActive = true;

  User user = createUser(name!, age, isActive:isActive);
  user.display();
  


}


class User{

  String? name;
  int? age;
  bool? isActive;

  User(this.name, this.age, this.isActive);

  void display(){
    print("\nName: ${this.name}");
    print("Age: ${this.age}");
    print("Active: ${this.isActive}");
  }


}

// za3ma input function ta3 python parceque 9ouwa
String? input(String? message){
  print(message);
  return stdin.readLineSync(); 
}

User createUser(String name, int age, {bool? isActive=true}){

  return User(name, age, isActive);
}