import 'package:flutter/material.dart';

class ColoredCheckBox extends StatefulWidget {
  @override
  _ColoredCheckBoxState createState() => _ColoredCheckBoxState();
}

class _ColoredCheckBoxState extends State<ColoredCheckBox> {
  bool isChecked = true;
  Color uncheckedColor = Colors.white;
  Color checkedColor = Color(0xFFF26129);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: isChecked ? checkedColor : uncheckedColor,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: isChecked ? Color(0xFFF26129) : Color(0xFF7B8794),
            width: 2,
          ),
        ),
        child: isChecked
            ? Align(
                alignment: Alignment.center,
                child: Transform.scale(
                  scale:
                      0.8, // Reduce the size of the check icon (you can adjust this value)
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
