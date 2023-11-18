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
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.red),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Title",
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
