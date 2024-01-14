import 'package:flutter/material.dart';

class Text7 extends StatelessWidget {
  final String text;

  Text7({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7B8794),
        // Add more text styling properties here as needed
      ),
    );
  }
}
