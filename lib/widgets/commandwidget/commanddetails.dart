import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stage_project/widgets/commandwidget/commandecontainer.dart';
import 'package:stage_project/widgets/commandwidget/changerproduit.dart';
import 'package:stage_project/widgets/commandwidget/traingularContainer.dart';
import 'package:stage_project/widgets/text/text4.dart';

import '../text/text3.dart';
import '../text/text8.dart';

class CommandDetails extends StatelessWidget {
  const CommandDetails({super.key});

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
            Navigator.pop(context);
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
                    Row(
                      children: [
                        Expanded(child: Text4(text: 'Commande')),
                        GestureDetector(
                          onTap: () {
                            Get.to(ChangerProduit());
                          },
                          child: Text(
                            'Changer',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(
                                0xfff26129,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
            PointedRectangularContainer(),
          ],
        ),
      ),
    );
  }
}
