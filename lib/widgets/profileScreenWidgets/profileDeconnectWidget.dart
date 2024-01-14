import 'package:flutter/material.dart';

class ProfileDeconnectWidget extends StatelessWidget {
  final String text;
  final ImageProvider<Object> prefixImage;
  final VoidCallback onTap; // New onTap parameter

  ProfileDeconnectWidget({
    required this.text,
    required this.prefixImage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Handle tap using the passed function
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 64,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFFFFEEEE),
          border: Border.all(
            color: Color(0xFFFFEEEE),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image(
              image: prefixImage,
              width: 20,
              height: 20,
              color: Color(0xFFE66A6A),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFE66A6A),
                ),
              ),
            ),
            // SizedBox(width: 10),
            // // Image.asset('assets/images/arrow-right',
            // // width: 20, height: 20, color: Colors.grey),
            // Icon(Icons.chevron_right, size: 20, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
