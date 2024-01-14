import 'package:flutter/material.dart';
import 'package:stage_project/widgets/custombuttom.dart';
import 'package:stage_project/widgets/profileScreenWidgets/profileContainer.dart';
import 'package:stage_project/widgets/text/text5.dart';
import '../../widgets/profileScreenWidgets/checkbox.dart';
import '../../widgets/profileScreenWidgets/uncheckedbox.dart';
import '../../widgets/text/text3.dart';
import '../../widgets/text/text4.dart';

class ProfileDuRestaurantScreen extends StatelessWidget {
  const ProfileDuRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text3(
          text: 'Profile du restaurant',
        ),
        // Add a back button in the AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text4(
                text: 'Nom du restaurant',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 64,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFF0F2F4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/home3.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Mon restoo',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF121826),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Telecharger quelques photos',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 64,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF0F2F4),
                  border: Border.all(
                    color: Color(0xFFF0F2F4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/gallery-add.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'ajouter à partir de la galerie',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF121826),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image.asset(
                          'assets/images/camera1.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProfileContainer(
                      image: AssetImage(
                        'assets/images/inside1.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfileContainer(
                      image: AssetImage(
                        'assets/images/inside2.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfileContainer(
                      image: AssetImage(
                        'assets/images/inside1.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfileContainer(
                      image: AssetImage(
                        'assets/images/inside2.png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Horaires d\'ouverture',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text5(text: 'Ouvert à'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 64,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xFFE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '08:00',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF121826),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text5(text: 'Fermer à'),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 64,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xFFE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '23:00',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF121826),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text5(text: 'Jours ouverts'),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ColoredCheckBox(),
                  SizedBox(
                    width: 40,
                  ),
                  Text5(text: 'Lundi'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ColoredCheckBox(),
                  SizedBox(
                    width: 40,
                  ),
                  Text5(text: 'Mardi'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ColoredCheckBox(),
                  SizedBox(
                    width: 40,
                  ),
                  Text5(text: 'Mecredi'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ColoredCheckBox(),
                  SizedBox(
                    width: 40,
                  ),
                  Text5(text: 'Jeudi'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ColoredCheckBox(),
                  SizedBox(
                    width: 40,
                  ),
                  Text5(text: 'Vendredi'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ColoredCheckBox(),
                  SizedBox(
                    width: 40,
                  ),
                  Text5(text: 'Samedi'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  UnCheckBox(),
                  SizedBox(
                    width: 40,
                  ),
                  Text5(text: 'Dimanche'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text4(text: 'Emplacement'),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 64,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFFF0F2F4),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/location.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        '133 Rue Pain Leve',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF121826),
                        ),
                      ),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/gps.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Utiliser ma position actuelle',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF7BC47F),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                placeHolder: 'Enregistrer',
                onPressed: () {},
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
