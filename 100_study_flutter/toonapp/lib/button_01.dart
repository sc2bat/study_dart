import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String inputTxt;
  final Color bgColor;
  final Color txtColor;

  const Button({
    super.key,
    required this.inputTxt,
    required this.bgColor,
    required this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          inputTxt,
          style: TextStyle(
            color: txtColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
