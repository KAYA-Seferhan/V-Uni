import 'human.dart';

class Student extends Human{
  int _gpa;

  Student(String name, String surname, String role, this._gpa) : super(name, surname, role);

  int get gpa => _gpa;
  set gpa(int gpa){
    _gpa = gpa;
  }

  @override
  void action(String info){
    print("$name $surname | $role | $gpa : $info");
  }

  void study(String duration){
    action("Studied for $duration");
  }

  void test(String difficulty_level, String duration){
    action("Took $difficulty_level level exam for $duration");
  }
}