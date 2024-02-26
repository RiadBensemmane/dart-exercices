import 'dart:math';
import 'dart:io';

void main(){

  Game g = Game();
  g.answer();


}

class Player{

    String? username;
    int highScore = 0;

    Player({ required this.username});

    void updateHighScore(int score){

          this.highScore = score;
      
    }

}

class Game{

  Player? p;
  List<Equation> eqs = [];
  int difficulty = 1 ;


  Game(){
      String? username = input("Welcome! please, enter a username: ");
      this.p = Player(username: username);

      try{
       this.difficulty = int.parse(input("Hi ${this.p!.username}! Please choose a difficulty:  1-easy   2-medium   3-hard (easy is selected by default)") ?? '');
      }
      catch(e){
        
      }

      List<String> list = ['+', '-', '*', '/'];
      for (String o in list){
          this.eqs.add(Equation(difficulty, o));
      }
  }

  int answer(){

    double? answer; 
    bool notnum;
    int score = 0;
    int i = 0;

    for (Equation e in this.eqs){
      notnum = true;
      i++;
    while (notnum){

      DateTime start = DateTime.now();

      try{
        answer = double.parse(input("\t--Question $i -- \n ${e.leftMember} ${e.operand} ${e.rightMember} = ") ?? '');
        notnum = false;
        if (answer == e.result){
          // score yeta7seb bel we9t, ida trepondi belkhef terbah bezaf les points (max 30 and min 1)
          int s =  max(1, (31 - (DateTime.now().difference(start)).inSeconds));
          score += s;
          print("Correct ! you have received $s points ");

        }
        else print("Wrong! the answer was ${e.result}");
      }
      catch (e){
          print("Please, enter a valid answer.");
      }
    }
    }
    if (score > this.p!.highScore){ // update high score ta3 player ida new score dyalou khir
      this.p!.highScore = score;
    }
    print("Total score: $score");
    return score;
  }


  

}

class Equation{

  int leftMember = 0;
  String operand = '';
  int rightMember = 0;
  double result = 0;

  Equation(int i, String operand){

    late int low;
    late int high;

    this.operand = operand;

    // 3la 7sab difficulty right and left members ta3 equation ykbrou wla ysgharou
    //tsema easy jik zam3a 5+5 and hard jik 563-857
    switch(i){
      case 1: 
         low = 1;
         high = 9;
      case 2: 
         low = 10;
         high = 99;
      case 3: 
         low = 100;
         high = 999;
    }
    // generates the equation

    Random r = Random();
    leftMember = low + r.nextInt(high - low);
    rightMember = low + r.nextInt(high - low);

    switch(operand){
      case '+':
        this.result = (leftMember + rightMember).toDouble();
      case '-':
        this.result = (leftMember - rightMember).toDouble();
      case '*':
        this.result = (leftMember * rightMember).toDouble();
      case '/':
        this.result = (leftMember / rightMember).toDouble();
    }
  }

  void display(){

    print("${leftMember} ${operand} ${rightMember} = ");

  }



}


String? input(String? message){

  if (message != null){
    print(message);
  }
  return (stdin.readLineSync() ?? '');
}

