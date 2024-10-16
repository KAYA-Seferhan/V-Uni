class Human{
  String _name;
  String _surname;
  String _role;

  Human(this._name, this._surname, this._role);

  String get name => _name;
  set name(String name){
    _name = name;
  }

  String get surname => _surname;
  set surname(String surname){
    _surname = surname;
  }

  String get role => _role;
  set role(String role){
    _role = role;
  }

  void action(String info){
    print("$name $surname $role : $info");
  }

  @override
  String toString(){
    return("$name $surname $role");
  }
}