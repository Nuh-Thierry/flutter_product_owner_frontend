import 'package:flutter/material.dart';

class Text5 extends StatelessWidget {
  final String text;

  Text5({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF3E4C59),
        // Add more text styling properties here as needed
      ),
    );
  }
}
