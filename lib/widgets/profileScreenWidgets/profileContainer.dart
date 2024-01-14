import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  final ImageProvider<Object> image;

  ProfileContainer({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 156,
      decoration: BoxDecoration(
        //color: Color(0xFFFEEFEA),
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: image,
          fit: BoxFit
              .cover, // Set the fit property to make the image fit inside the container
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0),
            //blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          // You can add other widgets inside the Stack if needed
          Positioned(
            bottom: 8,
            right: 8,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 16,
              child: Icon(
                Icons.close,
                color: Colors.black.withOpacity(0.5),
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
