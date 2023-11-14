class Player {
  String name;
  int killPoint;
  String team;

  Player({
    required this.name,
    required this.killPoint,
    required this.team,
  });

  void showInfo() {
    print("name $name killPoint $killPoint team $team");
  }
}

void main() {
  print("start Cascade Notation");

  var faker = Player(name: "lee", killPoint: 30, team: "blue");
  faker.showInfo();
  faker.name = "god";
  faker.killPoint = 300000;
  faker.team = "red";
  faker.showInfo();

  var qwer = Player(name: "qwer", killPoint: 10, team: "red")
    ..name = "god"
    ..killPoint = 300000
    ..team = "blue"
    ..showInfo();

  qwer.showInfo();

  print("end Cascade Notation");
}
