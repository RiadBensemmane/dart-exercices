void main(){

  Bottle ck = Bottle.Cokebottle();

  ck.open();

}

abstract class Bottle{

  void open();

  Bottle();

  factory Bottle.Cokebottle(){
    return CokeBottle();
  }
}

class CokeBottle implements Bottle{

  void open(){
    print("Coke bottle opened!");
  }
}