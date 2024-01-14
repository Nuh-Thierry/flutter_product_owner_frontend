import 'package:flutter/material.dart';

class PartagerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 1,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Partager',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(
                  0xFF1F2933,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Aider nous à attaindre plus de personnels!',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(
                  0xFF7B8794,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 40,
                right: 40,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFE9FBF0),
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/WhatsApp 1.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xFFE4E7EB),
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Facebook 1.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xFFFAEBF3),
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Instagram 1.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 64,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE4E7EB), width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'https//:www.app.flydelivery.com',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1F2933),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/document-copy.png',
                    width: 24,
                    height: 24,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
