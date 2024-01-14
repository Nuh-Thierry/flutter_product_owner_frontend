import 'package:flutter/material.dart';
import 'package:stage_project/view/ProfileScreenScreens/FoirequestionScreen.dart';
import 'package:stage_project/view/ProfileScreenScreens/changepassword1.dart';
import 'package:stage_project/view/authScreens/LogoutScreen.dart';
import 'package:stage_project/view/ProfileScreenScreens/contacterScreen.dart';
import 'package:stage_project/view/ProfileScreenScreens/informationducompteScreen.dart';
import 'package:stage_project/view/ProfileScreenScreens/langueScreen.dart';
import 'package:stage_project/view/ProfileScreenScreens/notificatioScreen.dart';
import 'package:stage_project/view/ProfileScreenScreens/partagerScreen.dart';
import 'package:stage_project/view/ProfileScreenScreens/politiqueScreen.dart';
import 'package:stage_project/view/ProfileScreenScreens/profileDuRestaurantScreen.dart';
import 'package:stage_project/widgets/bottom_nav_bar.dart';
import 'package:stage_project/widgets/profileScreenWidgets/profileinfoWidget.dart';
import 'package:stage_project/widgets/text/text3.dart';

import '../../widgets/profileScreenWidgets/profileDeconnectWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarForApp(pageIndex: 3),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text3(
                text: 'Profile',
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        child: Image.asset(
                          'assets/images/Ellipse 27.png',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/camera.png',
                            width: 14,
                            height: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Foulen Ben Foulen',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1F2933),
                        ),
                      ),
                      Text(
                        'foulenbenfoulen@mail.com',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6C727F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Générale',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6C727F),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ProfileInfoWidget(
                text: 'Information du compte',
                prefixImage: AssetImage('assets/images/User.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InformationDuCompteScreen(),
                    ),
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileInfoWidget(
                text: 'Profile du Restaurant',
                prefixImage: AssetImage('assets/images/home-2.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileDuRestaurantScreen(),
                    ),
                  );
                },
                //suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileInfoWidget(
                text: 'Changer le mot de passe',
                prefixImage: AssetImage('assets/images/lock.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangePassword1(),
                    ),
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Paramétres',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6C727F),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ProfileInfoWidget(
                text: 'Notification',
                prefixImage: AssetImage('assets/images/frame.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ),
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileInfoWidget(
                text: 'Langue',
                prefixImage: AssetImage('assets/images/global.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LangueScreen(),
                    ),
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Autres',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6C727F),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ProfileInfoWidget(
                text: 'Contacter',
                prefixImage: AssetImage('assets/images/call.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContacterScreen(),
                    ),
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileInfoWidget(
                text: 'Partager',
                prefixImage: AssetImage('assets/images/flash-circle.png'),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return PartagerScreen();
                    },
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileInfoWidget(
                text: 'Foire aux questions',
                prefixImage: AssetImage('assets/images/flag.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoireQuestionScreen(),
                    ),
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 20,
              ),
              ProfileInfoWidget(
                text: 'Politique de confidentialité',
                prefixImage: AssetImage('assets/images/shield-security.png'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PolitiqueScreen(),
                    ),
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 60,
              ),
              ProfileDeconnectWidget(
                text: 'Déconnection',
                prefixImage: AssetImage('assets/images/logout.png'),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return LogoutScreen();
                    },
                  );
                },
                // suffixIcon: Icons.chevron_right,
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
