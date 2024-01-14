import 'package:flutter/material.dart';
import 'package:stage_project/model/onboarding.dart';
import 'package:stage_project/view/authScreens/loginScreen.dart';
import 'package:stage_project/widgets/custombuttom.dart';

class Onboarding1 extends StatefulWidget {
  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 30,
              right: 30,
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(
                        0xFFFEEFEA,
                      ), // Set the circular line color to orange
                      width: 1,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: CircleAvatar(
                          radius: 120,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            contents[i].image,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 20,
                        child: Image.asset(
                          'assets/images/group1.png',
                          width: 44,
                          height: 44,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 30,
                        child: Image.asset(
                          'assets/images/group2.png',
                          width: 44,
                          height: 44,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 20,
                        child: Image.asset(
                          'assets/images/group3.png',
                          width: 44,
                          height: 44,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  contents[i].title,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xFF252525,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  contents[i].description,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      0xFF808C91,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      contents.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                CustomButton(
                  placeHolder: currentIndex == contents.length - 1
                      ? 'Continuer'
                      : 'Suivant',
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    }
                    _controller?.nextPage(
                        duration: Duration(microseconds: 100),
                        curve: Curves.easeInBack);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF23129),
      ),
    );
  }
}
