import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  final String text;

  Text1({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Color(0xFF121826),
        // Add more text styling properties here as needed
      ),
    );
  }
}
