import 'package:flutter/material.dart';

class Player {
  // String name = "faker";
  // String name;
  // Player({required this.name});
  String? name;
  Player();
}

void main() {
  // var player01 = Player(name: "hina");
  var player01 = Player();

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text("first text"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("appbar title"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("show body center"),
        ),
      ),
    );
  }
}
