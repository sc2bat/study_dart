class Player {
  late final String name;
  late int age;

  Player(this.name, this.age);

  void showHello() {
    print("hello $name");
  }
}

void main() {
  print("start main");

  var player01 = Player("asdf", 12);
  player01.showHello();
  var player02 = Player("zxcv", 133);
  player02.showHello();

  print("end main");
}
