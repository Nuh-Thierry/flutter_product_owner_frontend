import 'package:flutter/material.dart';

class Text4 extends StatelessWidget {
  final String text;

  Text4({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xFF3E4C59),
        // Add more text styling properties here as needed
      ),
    );
  }
}
