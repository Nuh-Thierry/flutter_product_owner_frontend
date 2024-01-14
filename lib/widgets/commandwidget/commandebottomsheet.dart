import 'package:flutter/material.dart';
import 'package:stage_project/widgets/commandwidget/ajouterProduitContainer.dart';
import 'package:stage_project/widgets/profileScreenWidgets/textfield.dart';

class CommandBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                placeholder: 'Ex: Pizza',
                prefixIcon: Icon(Icons.search),
              ),
              SizedBox(
                height: 30,
              ),
              AjouterProduitContainer(text: 'Pizza jambon'),
              SizedBox(
                height: 20,
              ),
              AjouterProduitContainer(text: 'Sandwich salami'),
              SizedBox(
                height: 20,
              ),
              AjouterProduitContainer(text: 'Polet'),
              SizedBox(
                height: 20,
              ),
              AjouterProduitContainer(text: 'Sandwich double oeuf'),
              SizedBox(
                height: 20,
              ),
              AjouterProduitContainer(text: 'Pizza jambon'),
              SizedBox(
                height: 20,
              ),
              AjouterProduitContainer(text: 'Sandwich salami jambon'),
              SizedBox(
                height: 20,
              ),
              AjouterProduitContainer(text: 'Sandwich kefteji'),
              SizedBox(
                height: 20,
              ),
              AjouterProduitContainer(text: 'etc'),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
