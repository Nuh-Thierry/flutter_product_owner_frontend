import 'package:flutter/material.dart';

class TextMenu extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;

  TextMenu({
    required this.text,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(
                0xFF1F2933,
              ),
              // Add more text styling properties here as needed
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            text1,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(
                0xFF7B8794,
              ),
              // Add more text styling properties here as needed
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(
                0xFFF26129,
              ),
              // Add more text styling properties here as needed
            ),
          ),
        ],
      ),
    );
  }
}
