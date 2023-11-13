class Player {
  late final String name;
  late int age;
  String team;
  int teamVal;

  // Player(this.name, this.age, this.team, this.wo);
  Player(
      {required this.name,
      required this.age,
      required this.team,
      required this.teamVal});

  void showHello() {
    print("hello $name");
  }
}

void main() {
  print("start main");

  var player01 = Player(name: "asdf", age: 12, team: "red", teamVal: 100);
  player01.showHello();
  var player02 = Player(name: "zxcv", age: 133, team: "blue", teamVal: 200);
  player02.showHello();

  print("end main");
}
