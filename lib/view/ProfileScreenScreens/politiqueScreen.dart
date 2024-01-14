import 'package:flutter/material.dart';
import 'package:stage_project/widgets/text/text3.dart';

class PolitiqueScreen extends StatelessWidget {
  const PolitiqueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text3(text: 'Politique de confidentialité'),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Denière mise à jour : 23 janvier 2023.',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6C727F)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Cette politique de confidentialité décrit nos politiques et procédures su la collecte. l\'utilisation et la divulgation de vos informations lorsque vous utilisez le service et vous informe sur vos droites en matières de confidentialité et sur la manière dont la loi vous protége.',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6C727F)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Nous utilisons vous données personnelles pour fournir et améliorer le service. En utilisants le service, Vous acceptez la collecte et l\'utilisation d\'information conformément à la présent politique de confidentialité à été crée à l\'aide du générateur de politique de confidentialité TermsFeed.',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6C727F)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Interprétation et définitions',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xFF03041D,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Interprétation',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xFF03041D,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Les mots dont le lettre initiale est en majuscule ont des significations définies dans les conditions suivants.Les définitions suivants auronts la meme signification qu\'elles apparaissent au singulier ou au pluriel.',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6C727F)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Définitions',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xFF03041D,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Aux fins de la présente politique de confidentialité :',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6C727F)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\u2022'),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      'Compte désigne un compte unique créé pour vous permettre d\'accéder à notre service ou à des parties de notre service.',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6C727F)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\u2022'),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      'Affilié désigne une entité qui contrôle, est contrôlée par ou est sous contrôle commun avec une partie, où "contrôle"',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6C727F)),
                    ),
                  ),
                ],
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
