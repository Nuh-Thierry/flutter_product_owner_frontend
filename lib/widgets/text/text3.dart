import 'package:flutter/material.dart';

class Text3 extends StatelessWidget {
  final String text;

  Text3({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Color(0xFF1F2933),
        // Add more text styling properties here as needed
      ),
    );
  }
}
