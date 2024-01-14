import 'package:flutter/material.dart';
import 'package:stage_project/view/authScreens/enternewPassword.dart';
import 'package:stage_project/widgets/custombuttom.dart';
import 'package:stage_project/widgets/text/text4.dart';
import 'package:stage_project/widgets/text/text5.dart';

class CodeVerificationScreen extends StatefulWidget {
  const CodeVerificationScreen({super.key});

  @override
  State<CodeVerificationScreen> createState() => _CodeVerificationScreen();
}

class _CodeVerificationScreen extends State<CodeVerificationScreen> {
  final TextEditingController codeController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    codeController.addListener(_validateFields);
  }

  void _validateFields() {
    setState(() {
      _isButtonEnabled =
          codeController.text.isNotEmpty && codeController.text.length > 5;
    });
  }

  @override
  void dispose() {
    codeController.dispose();
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
                  'Entrez le code de',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F2933),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'vérification',
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
              Center(
                child: Text5(
                  text: 'Nous l\'avons envoyer au numero 26051440',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text4(
                text: 'Code de vérification',
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                cursorColor: Colors.purple,
                controller: codeController,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: "code ici",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xFFE4E7EB),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Color(0xFFF26129),
                    ),
                  ),
                  prefixIcon: Image.asset(
                    'assets/images/shield-tick.jpg',
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Renvoyer le code',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(
                      0xFF3E4C59,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              CustomButton(
                placeHolder: 'Continuer',
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EnterNewPasswordScreen(),
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
