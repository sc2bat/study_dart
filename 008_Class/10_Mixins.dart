mixin Strong {
  final double strenghtLevel = 99.99;
}

mixin QuickRunner {
  void runQuick() {
    print("quick runner");
  }
}

mixin Tall {
  final double height = 188.88;
}

enum Team {
  blue,
  red,
  black,
}

class User with QuickRunner, Strong, Tall {
  Team team;

  User({required this.team});
}

class Horse with Strong, QuickRunner {}

class Human with QuickRunner {}

void main() {
  print("start Mixins none constructor");

  print("end Mixins");
}
