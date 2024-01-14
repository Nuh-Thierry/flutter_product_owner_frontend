import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final void Function(bool isSelected)? onchanged;

  const CustomRadioButton({super.key, this.onchanged});

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
              widget.onchanged?.call(isSelected);
            });
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
              border: Border.all(
                color: isSelected ? Color(0xFFF26129) : Color(0xFF7B8794),
                width: 5,
              ),
            ),
            child: isSelected
                ? Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
