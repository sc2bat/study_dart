import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nested Rows and Columns Example'),
        ),
        body: const Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text('Row 1, Column 1'),
                    Icon(Icons.star),
                  ],
                ),
                Column(
                  children: [
                    Text('Row 1, Column 2'),
                    Icon(Icons.favorite),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text('Row 2, Column 1'),
                    Icon(Icons.thumb_up),
                  ],
                ),
                Column(
                  children: [
                    Text('Row 2, Column 2'),
                    Icon(Icons.thumb_down),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text('Row 3, Column 1'),
                    Icon(Icons.mail),
                  ],
                ),
                Column(
                  children: [
                    Text('Row 3, Column 2'),
                    Icon(Icons.chat),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
