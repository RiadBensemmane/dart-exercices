
import 'dart:io';

void main(){

    String? op = null;
    List<String> operateurs = ['+', '-', '/', '*' ];
    bool fin = false;

    while(fin == false){
        do{

        print("Choose an operation : + or - or * or /: ");

        op = stdin.readLineSync();

      }while (op == null || operateurs.contains(op) == false);

      double? result = null;

      print("performing the operation: A $op B: ");

      print("Enter the value of A: ");
      try{

        double A = double.parse(stdin.readLineSync() ?? '');

        print("Enter the value of B: ");

        double B = double.parse(stdin.readLineSync() ?? '');
    
          switch(op){
            case '+':
              result = A+B;
              break;
            case '-':
              result = A-B;
              break;
            case '*':
              result = A*B;
              break;
            case '/':
              if (B == 0){
                print("You cannot divide by 0 !");
              }
              else result = A/B;
              break;
          
          }

          if (result != null){
            print("The result is : $result");
          }
      }
      catch(e){
        print("The following error occured: $e");
      }
        

      print("Would oyu like to perform another operation ?  y-yes / n-no: ");
      
      String? rep = stdin.readLineSync();

      if (rep == 'n' || rep == 'no'){
        fin = true;
      }
}



}

