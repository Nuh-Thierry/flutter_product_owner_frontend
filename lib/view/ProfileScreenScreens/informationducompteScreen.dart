import 'package:flutter/material.dart';
import 'package:stage_project/widgets/custombuttom.dart';
import 'package:stage_project/widgets/profileScreenWidgets/phoneNumber.dart';
import 'package:stage_project/widgets/text/text4.dart';
import 'package:stage_project/widgets/profileScreenWidgets/textfield.dart';

import '../../widgets/text/text3.dart';

class InformationDuCompteScreen extends StatefulWidget {
  const InformationDuCompteScreen({super.key});

  @override
  State<InformationDuCompteScreen> createState() =>
      _InformationDuCompteScreenState();
}

class _InformationDuCompteScreenState extends State<InformationDuCompteScreen> {
  String? selectedSex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text3(
          text: 'Information du compte',
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
                text: 'Nom et prénom',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                placeholder: 'Nom et Prenom',
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Date de naissance',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                placeholder: 'Date',
                suffixIcon: Icon(Icons.date_range),
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'E-mail',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                placeholder: 'Email',
              ),
              SizedBox(
                height: 30,
              ),
              Text4(
                text: 'Téléphone',
              ),
              SizedBox(
                height: 20,
              ),
              PhoneNumber(),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Genre',
              ),
              SizedBox(
                height: 20,
              ),
              DropdownButtonFormField<String>(
                value: selectedSex,
                onChanged: (newValue) {
                  setState(() {
                    selectedSex = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: "Sexe",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black12,
                    ),
                  ),
                ),
                items: <String>['Homme', 'Femme'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
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
