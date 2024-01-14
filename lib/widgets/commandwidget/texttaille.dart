import 'package:flutter/material.dart';

import '../profileScreenWidgets/radiobutton.dart';

class TextTaille extends StatefulWidget {
  final String text;

  const TextTaille({super.key, required this.text});

  @override
  State<TextTaille> createState() => _TextTailleState();
}

class _TextTailleState extends State<TextTaille> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: isTapped
                  ? Color(0xff52606d)
                  : Color(
                      0xffcbd2d9,
                    ),
            ),
          ),
        ),
        CustomRadioButton(
          onchanged: (isSelected) {
            setState(() {
              isTapped = isSelected;
            });
          },
        ),
      ],
    );
  }
}
