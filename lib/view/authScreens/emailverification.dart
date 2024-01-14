import 'package:flutter/material.dart';
import 'package:stage_project/widgets/custombuttom.dart';
import 'package:stage_project/widgets/profileScreenWidgets/textfield.dart';
import 'loginScreen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreen();
}

class _EmailVerificationScreen extends State<EmailVerificationScreen> {
  final TextEditingController emailController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(_validateFields);
  }

  void _validateFields() {
    setState(() {
      _isButtonEnabled = emailController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 100.0,
            right: 100,
          ),
          child: Text(
            'Logo',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(
                0xFFF26129,
              ),
            ),
          ),
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
              Center(
                child: Text(
                  'Merci d\'avoir fourni',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F2933),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'vos informations',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F2933),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nous examinerons vos informations et si nous pouvons les confirmer, vous pourez accéder à votre compte dans un délai d’environs 24 heures',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7B8794),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Renseignez votre adresse e-mail pour vous notifier quand votre compte est prêt',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF3E4C59),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                prefixIcon: Icon(
                  Icons.mail,
                ),
                placeholder: 'Votre addresse mail',
                controller: emailController,
              ),
              SizedBox(
                height: 280,
              ),
              CustomButton(
                placeHolder: 'Continuer',
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                LoginScreen(), // Replace LoginScreen with your desired screen
                          ),
                        );
                      }
                    : null,
                isEnabled: _isButtonEnabled,
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
