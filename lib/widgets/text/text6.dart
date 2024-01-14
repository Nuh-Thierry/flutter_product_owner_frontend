import 'package:flutter/material.dart';

class Text6 extends StatelessWidget {
  final String text;

  Text6({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xFF323F4B),
        // Add more text styling properties here as needed
      ),
    );
  }
}
