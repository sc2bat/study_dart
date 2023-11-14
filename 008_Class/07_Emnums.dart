enum Team { red, blue }

class Player {
  String name;
  int money;
  Team team;

  Player({
    required this.name,
    required this.money,
    required this.team,
  });

  void showInfo() {
    print("name $name, money $money, team $team");
  }
}

void main() {
  print("start Emnums");

  var user01 = Player(name: "user1", money: 10000, team: Team.red)
    ..money = 3000
    ..team = Team.blue
    ..showInfo();
  ;
  var user02 = Player(name: "user2", money: 20000, team: Team.blue)..showInfo();

  print("end Emnums");
}
