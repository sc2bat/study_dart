import 'package:flutter/material.dart';
import 'package:toonapp/pomodoroApp/screens/home_screen_01.dart';
import 'package:toonapp/pomodoroApp/screens/home_screen_02.dart';
import 'package:toonapp/pomodoroApp/screens/home_screen_03.dart';
import 'package:toonapp/pomodoroApp/screens/home_screen_04.dart';

import 'screens/home_screen_05.dart';

void main() {
  runApp(const Pomodoro());
}

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.amber),
        ),
      ),
      home: const HomeScreen05(),
    );
  }
}
