import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var log = Logger();

class HomeScreen03 extends StatefulWidget {
  const HomeScreen03({super.key});

  @override
  State<HomeScreen03> createState() => _HomeScreen03State();
}

class _HomeScreen03State extends State<HomeScreen03> {
  int totalSeconds = 1500;
  late Timer timer;
  bool isRunning = false;

  void onTick(Timer timer) {
    log.i("start onTick");
    setState(() {
      totalSeconds -= 1;
    });
    log.i("end onTick");
  }

  void onStartPressed() {
    log.i("start onStartPressed");

    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
    log.i("is running $isRunning");
    log.i("end onStartPressed");
  }

  void onPausePressed() {
    log.i("start onPausePressed");
    timer.cancel();
    setState(() {
      isRunning = false;
    });
    log.i("is running $isRunning total value $totalSeconds");
    log.i("end onPausePressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              // decoration: const BoxDecoration(color: Colors.red),
              alignment: Alignment.bottomCenter,
              child: Text(
                "$totalSeconds",
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 90,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 140,
                    color: Theme.of(context).cardColor,
                    onPressed: isRunning ? onPausePressed : onStartPressed,
                    icon: Icon(
                      isRunning ? Icons.pause_circle : Icons.play_circle_sharp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      // borderRadius: BorderRadius.circular(50),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(
                          50,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "pomodoro",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .color,
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .color,
                          ),
                        ),
                      ],
                    ),
                    // decoration: const BoxDecoration(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Center extends StatelessWidget {
  const Center({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: const BoxDecoration(color: Colors.green),
        );
  }
}
