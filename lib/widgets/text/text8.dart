import 'package:flutter/material.dart';

class Text8 extends StatelessWidget {
  final String text;

  Text8({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Color(
          0xff03041d,
        ),
      ),
    );
  }
}
