// class
class Player {
  final String name = "qwer";
  int age = 33;

  void showHello() {
    var test = "asdf";
    print("hello $test");
    // print("hello {$this.name}");
    print("hello $name");
  }
}

void main() {
  // print("test");

  // var player = new Player();
  var player = Player();

  print(player.name);
  print(player.age);
  // player.name = "asdf"; // final modify not allow
  player.age = 300;
  print(player.age);

  player.showHello();
}
