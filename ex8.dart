import 'dart:io';
void main (){

    print(returnValue(input_parseInt("Enter an integer: ")));
}



int returnValue(int? n){
  return n ?? 0;
} 

int? input_parseInt([String? message]){

  if (message != null){
    print(message);
  }

  try{
    return int.parse(stdin.readLineSync() ?? '');
  }  
  catch(e){
    print("You must enter an integer !");
    return null;
  }
}