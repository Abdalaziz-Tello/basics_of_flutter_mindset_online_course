
void main() {
  // ! Level 0
  // Data Structure 
  double number = 10.0;
  String name = "Dart";
  bool isLearning = true;
  int count = 5;

  num value = count; // num can hold both int and double
  dynamic dynamicValue = "Hello"; // dynamic can hold any type of value

  print(number.runtimeType);
  print(value.runtimeType);
  print(dynamicValue.runtimeType);

  List names =["Dart","Java","Python",89 ];
  Map marks = {"English":"90","Maths":"80","Science":"70",};

  print(marks);
  print(names);

  // Function

// ? Optional Named Parameters
void greet({String name="Dart"}) {
    print("Hello, $name!");
  }

greet(name: "Flutter");


// ? Optional Named Parameters
int addMagic(  int b,{int a=0} ) {
    return (a + b)*12;
  }

print(count); // ? 5
count =addMagic(3, a: 2);
print(count); // ? 60


  // ! Level 0.5
  print(names[0]);
  print(marks["Maths"]);
  

  // ! Level 1
  // OOP : Data that act using the methods (Function)
  
}
