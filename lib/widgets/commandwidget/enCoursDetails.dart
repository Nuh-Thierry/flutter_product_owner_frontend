import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stage_project/widgets/commandwidget/commandecontainer.dart';
import 'package:stage_project/widgets/commandwidget/triangular1.dart';
import 'package:stage_project/widgets/text/text4.dart';

import '../text/text3.dart';
import '../text/text8.dart';

class EnCoursDetails extends StatelessWidget {
  const EnCoursDetails({super.key});

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
                    Text8(text: 'Client'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1.5,
                          color: Color(
                            0xfff4f4f6,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                          right: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/client_im.png'),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Text(
                                '24ZE789a',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(
                                    0xff03041d,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child:
                                  Image.asset('assets/images/client_call.png'),
                            ),
                          ],
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
                      height: 20,
                    ),
                    Text(
                      'N\'oubliez pas de mettre les sauces mayonnaise & harissa.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xff6c727f,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            PointedRectangularContainer1(),
          ],
        ),
      ),
    );
  }
}
