import 'package:flutter/material.dart';
import 'package:stage_project/widgets/profileScreenWidgets/contactContainer.dart';

import '../../widgets/text/text3.dart';

class ContacterScreen extends StatelessWidget {
  const ContacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text3(text: 'Contacter'),
        // Add a back button in the AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notre équipe de support est là pour vous aider à tout moment',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(
                  0xFF7B8794,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ContactContainer(
              text: 'Contacter Fly Delivery',
              prefixImage: AssetImage(
                'assets/images/call-calling.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ContactContainer(
              text: 'WhatsApp',
              prefixImage: AssetImage(
                'assets/images/whatsapp.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ContactContainer(
              text: 'Facebook',
              prefixImage: AssetImage(
                'assets/images/Facebook.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ContactContainer(
              text: 'Instagram',
              prefixImage: AssetImage(
                'assets/images/Instagram.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
