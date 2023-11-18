import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
// import 'package:toonapp/main.dart';

var logger = Logger();

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  List<int> numbers = [];

  void onClicked() {
    setState(() {
      counter += 1;
      numbers.add(numbers.length);
    });
    // print(numbers);
    logger.d(numbers);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click counter",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "$counter",
                style: const TextStyle(fontSize: 30),
              ),
              for (var number in numbers) Text("$number"),
              IconButton(
                iconSize: 30,
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
