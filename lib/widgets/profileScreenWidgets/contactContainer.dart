import 'package:flutter/material.dart';

class ContactContainer extends StatelessWidget {
  final String text;
  final ImageProvider prefixImage;
  //final VoidCallback? onTap;
  //final ImageProvider suffixIcon;

  ContactContainer({
    required this.text,
    required this.prefixImage,
    // this.onTap,
    //required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 64,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFFFEEFEA),
          border: Border.all(
            color: Color(0xFFFEEFEA),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image(image: prefixImage, width: 20, height: 20),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF121826),
                ),
              ),
            ),
            SizedBox(width: 10),
            // Image.asset('assets/images/arrow-right',
            // width: 20, height: 20, color: Colors.grey),
            Image.asset(
              'assets/images/export.png',
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
