void main()async {
  Future<int> result;
  print("1");
  result =  doSomthingNow();
  // Future
  print("2");
  print(await result);
}

Future<int> doSomthingNow()async {
  var sum = 0;
  sum = 1 + 2;
  // ? There is somthing need responding from other system
 await  Future.delayed(Duration(seconds: 3));
  print("Hello");
  return sum;
}
// ! 1 Hello| 2| 3| waiting 3 sec
// ! 1 waiting 3 sec Hello| 2| 3| 


 // ? 1 hello 2 3sec 3
 // ? 