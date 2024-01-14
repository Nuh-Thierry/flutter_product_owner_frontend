import 'package:flutter/material.dart';
import 'package:stage_project/view/onbaording/welcomescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    _navigatetoNextScreen();
  }

  _navigatetoNextScreen() async {
    await Future.delayed(
      Duration(milliseconds: 4000),
      () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 500),
            pageBuilder: (context, animation, secondaryAnimation) =>
                WelcomeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF26129),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 450),
          child: Column(
            children: [
              Text(
                'LOGO',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color(
                    0xFFFFFFFF,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
