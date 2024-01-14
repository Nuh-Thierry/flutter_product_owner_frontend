import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final int number;
  final String text;
  final Widget icon;

  const ContainerWidget({
    required this.number,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Color(0xFFFEEFEA),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0),
              //blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFFF26129),
              child: icon,
              radius: 40,
            ),
            SizedBox(height: 16),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
