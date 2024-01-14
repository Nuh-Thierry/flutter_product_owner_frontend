import 'package:flutter/material.dart';

import '../profileScreenWidgets/uncheckedbox.dart';

class SuppllementText extends StatefulWidget {
  final String text;
  final String prix;
  final ValueChanged<bool>? onChanged;

  const SuppllementText(
      {super.key, required this.text, required this.prix, this.onChanged});

  @override
  State<SuppllementText> createState() => _SuppllementTextState();
}

class _SuppllementTextState extends State<SuppllementText> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: isChecked ? Color(0xff1f2933) : Color(0xffcbd2d9),
              ),
            ),
          ),
          SizedBox(
            width: 150,
          ),
          Expanded(
            child: Text(
              widget.prix,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: isChecked ? Color(0xfff26129) : Color(0xffcbd2d9),
              ),
            ),
          ),
          UnCheckBox(
            isChecked: isChecked,
            onChanged: (newValue) {
              setState(() {
                isChecked = newValue;
              });
              widget.onChanged?.call(isChecked);
            },
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
