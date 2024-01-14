import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool? obscureText;
  final TextEditingController? controller;
  final String placeholder;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? color;
  //final TextEditingController controller;

  CustomTextField({
    required this.placeholder,
    this.suffixIcon,
    this.prefixIcon,
    this.color,
    this.controller,
    this.obscureText,
    //required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      cursorColor: Color(0xfff26129),
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        labelText: placeholder,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Colors.grey.shade600,
        ),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0xFFE4E7EB),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1.5,
            color: Color(0xFFF26129),
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
