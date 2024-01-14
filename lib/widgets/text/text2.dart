import 'package:flutter/material.dart';

class Text2 extends StatelessWidget {
  final String text;

  Text2({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0xFF1F2933),
        // Add more text styling properties here as needed
      ),
    );
  }
}
