import 'package:flutter/material.dart';
import 'package:stage_project/widgets/custombuttom.dart';

class DupliquerDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/font.png',
              ),
              SizedBox(height: 20),
              Text(
                'Produit répliquer avec succés',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFF26129)),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Vous serez redirigé vers la copie',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      0xFF7B8794,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                placeHolder: 'D\'accord',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
