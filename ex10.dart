import 'dart:io';

void main(){

  // unfortunately, i did not really understand what's the meaning of "sort asynchronously"

  List<String> list = ["cc", "slm", "cv", "moi", 
  "3lah ma9blounish f staff educteck, staff agc, hackiwna, alors que kayen new comers acceptawhoum f literally ga3 l events?"
  , "dsl", "vrai", "dz"];

  print("Unsorted list: \n$list");

  list.sort();

  print("Sorted list: \n $list");

}