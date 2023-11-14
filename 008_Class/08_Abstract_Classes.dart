abstract class User {
  void walk();
}

enum Level {
  beginner,
  pro,
  gosu,
}

enum Team {
  red,
  blue,
  black,
}

class Player extends User {
  String name;
  Level level;
  Team team;

  Player({
    required this.name,
    required this.level,
    required this.team,
  });

  void walk() {
    print("user $name walk");
  }

  void showInfo() {
    print("user $name, level $level, team $team");
  }
}

class Coach extends User {
  void walk() {
    print("coach walk");
  }
}

void main() {
  print("start abstract class");
  print("end abstract class");
}
