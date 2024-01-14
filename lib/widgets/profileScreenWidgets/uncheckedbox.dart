import 'package:flutter/material.dart';

class UnCheckBox extends StatefulWidget {
  final bool? isChecked;
  final ValueChanged<bool>? onChanged;
  final Color borderColor; // Make onChanged nullable

  UnCheckBox(
      {this.onChanged,
      this.borderColor = const Color(0xFF7B8794),
      this.isChecked});

  @override
  _UnCheckBoxState createState() => _UnCheckBoxState();
}

class _UnCheckBoxState extends State<UnCheckBox> {
  bool isChecked = false;
  Color uncheckedColor = Colors.white;
  Color checkedColor = Color(0xFFF26129);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          widget.onChanged
              ?.call(isChecked); // Notify parent if onChanged is not null
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
            width: 1,
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
