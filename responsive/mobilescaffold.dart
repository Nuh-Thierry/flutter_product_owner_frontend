import 'package:flutter/material.dart';
import 'package:stage_project/view/mainScreens/HomePage.dart';
import 'package:stage_project/view/mainScreens/profilescreen.dart';

import 'responsive_layout.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Scaffold'),
      ),
      body: ResponsiveLayout(
        mobileScaffold: HomePage(),
        tabletScaffold: HomePage(),
        desktopScaffold: ProfileScreen(),
      ),
    );
  }
}
