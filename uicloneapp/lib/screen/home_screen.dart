import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../model/date_calculator.dart';

var log = Logger();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log.d('start home screen build');
    final dateCal = DateCalculator();

    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'UI Clone App',
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/cat_512_sample.png',
              width: 50,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              '${dateCal.getDayOfWeek()} ${dateCal.getFormattedDateDay()}',
              style: const TextStyle(color: Colors.white),
            ),
            const Text(
              'TODAY',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
