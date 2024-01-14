import 'package:flutter/material.dart';

class Text9 extends StatelessWidget {
  final String text;

  Text9({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF6c727f),
        // Add more text styling properties here as needed
      ),
    );
  }
}
