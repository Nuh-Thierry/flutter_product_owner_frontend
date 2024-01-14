import 'package:flutter/material.dart';
import 'package:stage_project/widgets/menuwidget/supplementswidget.dart';

class SupplementMenuContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                SupplementWidegt(text: 'Salami', prix: '0.700 DT'),
                SizedBox(
                  height: 20,
                ),
                SupplementWidegt(text: 'Kwika', prix: '0.700 DT'),
                SizedBox(
                  height: 20,
                ),
                SupplementWidegt(text: 'Merguez', prix: '1.400 DT'),
                SizedBox(
                  height: 20,
                ),
                SupplementWidegt(text: 'Kebab', prix: '2.200 DT'),
                SizedBox(
                  height: 20,
                ),
                SupplementWidegt(text: 'Thon', prix: '2.500 DT'),
                SizedBox(
                  height: 20,
                ),
                SupplementWidegt(text: 'Chwarama', prix: '2.400 DT'),
                SizedBox(
                  height: 20,
                ),
                SupplementWidegt(text: 'Escalope', prix: '2.700 DT'),
                SizedBox(
                  height: 20,
                ),
                SupplementWidegt(text: 'Others', prix: '5.300 DT'),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
