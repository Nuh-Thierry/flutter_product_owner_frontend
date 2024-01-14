import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String placeHolder;
  final VoidCallback? onPressed;
  final bool isEnabled;

  CustomButton({
    required this.placeHolder,
    this.onPressed,
    this.isEnabled = true,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        onPressed: widget.isEnabled ? widget.onPressed : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            widget.isEnabled
                ? Color(0xFFF26129)
                : Color(0xFFF26129).withOpacity(0.5),
          ),
          elevation:
              MaterialStateProperty.all<double>(widget.isEnabled ? 5.0 : 0.0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        child: Text(
          widget.placeHolder,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
