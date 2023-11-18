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

  bool showTitle = true;

  void onClicked() {
    setState(() {
      counter += 1;
      numbers.add(numbers.length);
    });
    // print(numbers);
    logger.d(numbers);
  }

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.red),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle
                  ? const MyLargeTitle()
                  : const Text("show Title is False"),
              IconButton(
                  onPressed: toggleTitle,
                  icon: const Icon(Icons.remove_red_eye))
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    logger.i("init state");
  }

  @override
  void dispose() {
    super.dispose();
    logger.i("dispose!");
  }

  @override
  Widget build(BuildContext context) {
    logger.i("start build");
    return Text(
      "Title",
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
