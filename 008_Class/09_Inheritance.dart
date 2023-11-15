enum Team {
  blue,
  red,
  black,
}

class User {
  final String name;
  User({required this.name});

  void showUser() {
    print("user name is $name");
  }
}

class Player extends User {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void showUser() {
    super.showUser();
    print("my team ${team}");
  }
}

void main() {
  print("start Inheritance");

  var player01 = Player(team: Team.black, name: "faker");
  player01.showUser();

  print("end Inheritance");
}
