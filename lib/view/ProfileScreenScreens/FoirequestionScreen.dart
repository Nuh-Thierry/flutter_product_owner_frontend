import 'package:flutter/material.dart';
import 'package:stage_project/widgets/text/text6.dart';
import 'package:stage_project/widgets/text/text7.dart';

import '../../widgets/text/text3.dart';

class FoireQuestionScreen extends StatelessWidget {
  const FoireQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text3(text: 'Foire aux questions'),
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
              Text6(text: 'Ou est disponiblr Fly Delivery ?'),
              SizedBox(
                height: 20,
              ),
              Text7(
                  text:
                      'Le service Fly Delivery est actuellemnt disponible a Teboulba,'),
              SizedBox(
                height: 30,
              ),
              Text6(text: 'Les frais de livraison pour Fly Delivery ?'),
              SizedBox(
                height: 20,
              ),
              Text7(
                  text:
                      'Les frais de livraison varient en fonction de la distance et de la taille de la commande. Veulliez contacter notre service client pour plus d\'informations,'),
              SizedBox(
                height: 30,
              ),
              Text6(text: 'Comment puis-je suivre ma commande ?'),
              SizedBox(
                height: 20,
              ),
              Text7(
                  text:
                      'Vous pouvez utiliser l\'aplication pour suivre l\'etat de votre commande ou contacter notre service client'),
              SizedBox(
                height: 30,
              ),
              Text6(text: 'Delai de livraison ?'),
              SizedBox(
                height: 20,
              ),
              Text7(
                  text:
                      'Les délais de livraison varient en fonction de la destination et de la taille du commande, Veuillez conatcter notre service client pour plus d\'informations.'),
              SizedBox(
                height: 30,
              ),
              Text6(text: 'Garanties de livraison ?'),
              SizedBox(
                height: 20,
              ),
              Text7(
                  text:
                      'Oui, nous offrons une garantie de satisfaction pour toutes nos livraison.Si vous avez des probémes avec notre commande,veuillez contacter notre équipe de service clientèle pour ontenir de l\'aide.'),
              SizedBox(
                height: 30,
              ),
              Text6(text: 'Quels types de commandes sont acceptées ?'),
              SizedBox(
                height: 20,
              ),
              Text7(
                  text:
                      'Nous acceptons les commandes de toutes tailles,tant qu\'elles se situent dans nos limites de poids et de dimensions.Si vous avez des doutes sur votre commande,veuillez contacter notre service clientèle pour plus d\informations.'),
              SizedBox(
                height: 30,
              ),
              Text6(text: 'Quels models de paiement sont acceptés?'),
              SizedBox(
                height: 20,
              ),
              Text7(
                  text:
                      'Actuellement,nous acceptons le paiement en espèces à la livraison. Nous ajouterons d\'autres options à l\'avenir'),
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
