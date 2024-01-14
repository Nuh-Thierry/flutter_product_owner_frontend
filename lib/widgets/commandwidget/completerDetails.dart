import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stage_project/widgets/commandwidget/commandecontainer.dart';
import 'package:stage_project/widgets/commandwidget/triangular2.dart';
import 'package:stage_project/widgets/text/text4.dart';

import '../text/text3.dart';
import '../text/text8.dart';

class CompleterDetails extends StatelessWidget {
  const CompleterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text3(text: 'Commande détaillé'),
        // Add a back button in the AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text8(
                      text: 'Commande ID',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '24ZE789a',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(
                          0xff6c727f,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text4(text: 'Commande'),
                    SizedBox(
                      height: 10,
                    ),
                    CommandContainer(),
                    SizedBox(
                      height: 20,
                    ),
                    CommandContainer(),
                    SizedBox(
                      height: 30,
                    ),
                    Text4(text: 'Instruction spéciales'),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            PointedRectangularContainer2(),
          ],
        ),
      ),
    );
  }
}
