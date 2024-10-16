import 'human.dart';

class Instructor extends Human{
  String _branch;

  Instructor(String name, String surname, String role, this._branch) : super(name, surname, role);

  String get branch => _branch;
  set branch(String branch){
    _branch = branch;
  }

  @override
  void action(String info){
    print("$name $surname | $role | $branch : $info");
  }

  void teach(String duration){
    action("Lectured for $duration");
  }

  void test(String difficulty_level, String duration){
    action("Gave the students $difficulty_level level exam for $duration");
  }
}