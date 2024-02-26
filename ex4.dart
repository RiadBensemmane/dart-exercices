import 'dart:io';
void main(){

  List<String> friends = ["Manjour", "Skipi", "Brahim", "Zendev", "Zaki", "Didin", "Rouji"];

  print("Enter the first letter of the name of your friend: ");

  String alphabet = stdin.readLineSync() ?? '';

  search(alphabet, friends);

}

void search(String a, List<String> friends){

  int cpt = 0;

  for (String f in friends){

    if (f.toLowerCase().startsWith(a)) {
      print(f);
      cpt++;
    }
  }
  if (cpt == 0){
    print("No matches");
  }

}