void main() {
  int counter = 0;
  
  increament(){
    int nothing=0;
    counter++;
  }
  
//   decreament(){
//     nothing=10;
//     counter--;
//   }
  
  increament();


//   Human person1 =Human(birthDate:DateTime(1980));
//   person1.updateName(newName:"ahmad");
//   print(person1.age());
  
//   person1._name="";
//   print(person1.viewName());
  
  Student itStudent =Student(birthDate:DateTime(2010));
  itStudent.viewName();
  
  runApp();
}


abstract class Human {
  String _name="";
  DateTime birthDate;
  Human({required this.birthDate});

double age(){
  return DateTime.now().difference(this.birthDate).inDays/365;
}
  
  updateName({String newName=""}){
    if(newName.isEmpty){
      throw Exception();
    }
    
    if( newName.contains("a")){

      _name=newName.replaceFirst("a","A");
    }
    else {
    _name=newName;  
    }
    
  }
  
  doSomething();
  
  viewName(){
    if(_name.isNotEmpty){
      return _name;
    }
    else {
      throw Exception("please set the name before view it");
    }
  }
}


class Student extends Human {


Student({required super.birthDate});
  
  @override 
viewName(){
  print("Hello World");
}
  
  doSomething(){
    print("somthing");
  }
}





// ? How Flutter Works 
runApp(Widget widget ){
  print("Hello Widget");
}

// ! class to connect with some system info
class BuildContext {}



// ! class handle build method to render the ui
abstract class Widget {
  
 Widget build(BuildContext context);
  
}
// ! class handle build method to render the ui
abstract class StatelessWidget extends Widget {}

// ! Pre-implemented Widget to use directly
class FlutterLogo extends StatelessWidget {
  
}

// ! your class to start the app with 
class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext){
    return FlutterLogo();
  }
}
