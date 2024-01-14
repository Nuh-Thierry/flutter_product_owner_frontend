import 'package:flutter/material.dart';
import 'package:stage_project/widgets/custombuttom.dart';
import 'package:stage_project/widgets/profileScreenWidgets/textfield.dart';
import 'package:stage_project/widgets/text/text4.dart';

import '../text/text3.dart';

class AjouterSupplemnt extends StatefulWidget {
  @override
  State<AjouterSupplemnt> createState() => _AjouterSupplemntState();
}

class _AjouterSupplemntState extends State<AjouterSupplemnt> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _prixController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_validateFields);
    _prixController.addListener(_validateFields);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _prixController.dispose();
    super.dispose();
  }

  void _validateFields() {
    setState(() {
      _isButtonEnabled =
          _nameController.text.isNotEmpty && _prixController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text3(
          text: 'Ajouter Supplément',
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text4(
                text: 'Nom du supplément',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _nameController,
                placeholder: 'Nom du supplément',
              ),
              SizedBox(
                height: 20,
              ),
              Text4(
                text: 'Prix (DT)',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _prixController,
                placeholder: 'Prix (DT)',
              ),
              SizedBox(
                height: 350,
              ),
              CustomButton(
                placeHolder: 'Enregistrer',
                onPressed: _isButtonEnabled
                    ? () {
                        // _showInfoDialog(context);
                      }
                    : null,
                isEnabled: _isButtonEnabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
