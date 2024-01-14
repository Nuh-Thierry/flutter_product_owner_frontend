import 'package:flutter/material.dart';
import 'package:stage_project/widgets/profileScreenWidgets/radiobutton.dart';

import '../../widgets/text/text3.dart';

class LangueScreen extends StatelessWidget {
  const LangueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text3(text: 'Langue'),
        // Add a back button in the AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Passez à la langue préférée pour une meillieure expérience sur notre application.',
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
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Francais',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        0xFF323F4B,
                      ),
                    ),
                  ),
                ),
                CustomRadioButton(),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Arab (à bientot)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        0xFF323F4B,
                      ),
                    ),
                  ),
                ),
                CustomRadioButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
