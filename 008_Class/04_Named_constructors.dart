class Player {
  final String name;
  int ad, ap;
  String team;

  Player({
    required this.name,
    required this.ad,
    required this.ap,
    required this.team,
  });

  Player.createRedPlayer({
    required String name,
    required int ad,
  })  : this.name = name,
        this.ad = ad,
        this.ap = 0,
        this.team = "red";

  Player.createPurplePlayer(String name, int ad)
      : this.name = name,
        this.ad = ad,
        this.ap = 333333,
        this.team = "purple";

  void greeting() {
    print("greeting $name team ==> $team ad ==> $ad ap ==> $ap");
  }
}

void main() {
  print("start Named Constructors");

  var player01 = Player(name: "jun", ad: 20, ap: 30, team: "blue");

  var player02 = Player.createRedPlayer(
    name: "faker",
    ad: 400,
  );
  var player03 = Player.createPurplePlayer(
    "showmaker",
    400,
  );

  player01.greeting();

  player02.greeting();

  player03.greeting();

  print("end Named Constructors");
}
