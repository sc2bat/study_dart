import 'package:flutter/material.dart';
import 'package:uicloneapp/screen/home_screen.dart';

void main() {
  runApp(const UICloneApp());
}

class UICloneApp extends StatelessWidget {
  const UICloneApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
