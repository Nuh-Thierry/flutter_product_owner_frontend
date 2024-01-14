import 'package:flutter/material.dart';

class IngredientContainer extends StatelessWidget {
  final String text;

  const IngredientContainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Color(0xfffeefea),
      ),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xfff26129),
        ),
      ),
    );
  }
}
