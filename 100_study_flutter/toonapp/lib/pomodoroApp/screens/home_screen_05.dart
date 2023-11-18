import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

var log = Logger();

class HomeScreen05 extends StatefulWidget {
  const HomeScreen05({super.key});

  @override
  State<HomeScreen05> createState() => _HomeScreen05State();
}

class _HomeScreen05State extends State<HomeScreen05> {
  static const int twentyFiveMinutes = 1500;
  int totalSeconds = twentyFiveMinutes;
  late Timer timer;
  bool isRunning = false;
  int totalPomodoros = 0;

  void onTick(Timer timer) {
    log.i("start onTick");
    if (totalSeconds == 0) {
      log.i("total Seconds == 0 add totalPomodoros");
      setState(() {
        totalPomodoros += 1;
        isRunning = false;
        totalSeconds = twentyFiveMinutes;
        log.i("running $isRunning totalPomodoros $totalPomodoros");
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
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

  void onStopPressed() {
    log.i("start onStopPressed");
    timer.cancel();
    setState(() {
      isRunning = false;
      totalSeconds = twentyFiveMinutes;
      log.i("stop ========================== stop");
    });

    log.i("end onStopPressed");
  }

  String formatTimer(int seconds) {
    var duration = Duration(seconds: seconds);
    // log.i(duration);
    // log.i(duration.toString().split(".")[0]);
    // log.i(duration.toString().split(".").first);
    log.i(duration.toString().split(".").first.substring(2, 7));

    var formatDuration = duration.toString().split(".").first.substring(2, 7);

    // return "$seconds";
    return formatDuration;
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
                // "$totalSeconds",
                formatTimer(totalSeconds),
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
                  IconButton(
                    iconSize: 140,
                    color: Theme.of(context).cardColor,
                    onPressed: onStopPressed,
                    icon: const Icon(Icons.stop_circle),
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
                          "$totalPomodoros",
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
