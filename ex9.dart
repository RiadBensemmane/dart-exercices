import 'dart:io';

void main (){

  String? path = input("Enter the path to the csv file (leave blank for pp_soil.csv): ");
  File file;

  if (path == ''){
      file = File('./pp_soil.csv');
  }
  else{

      file = File(path!);

      if (!file.existsSync()){
        print("The specified path does not exist");
        exit(1);
      }
  }

  String contents = file.readAsStringSync();

  List<String> lines = contents.split('\n');

  print(lines.first);

  print('-' * lines.first.length);

  for (int i = 1; i< lines.length; i++){
    print(lines[i]);
  }

}

String? input(String? message){

   if (message != null){
      print(message);
   }

   return stdin.readLineSync();
}

