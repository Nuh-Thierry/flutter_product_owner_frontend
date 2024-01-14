import 'package:flutter/material.dart';
import 'package:stage_project/widgets/custombuttom.dart';
import 'package:stage_project/widgets/text/text3.dart';

class ChangePassword1 extends StatefulWidget {
  const ChangePassword1({super.key});

  @override
  State<ChangePassword1> createState() => _ChangePassword1();
}

class _ChangePassword1 extends State<ChangePassword1> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _password1Controller = TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_validateFields);
    _password1Controller.addListener(_validateFields);
  }

  void _validateFields() {
    setState(() {
      _isButtonEnabled = _passwordController.text.isNotEmpty &&
          _password1Controller.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _password1Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text3(
          text: 'Changer votre mots de passe',
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
        padding: const EdgeInsets.only(
          top: 80.0,
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Réinitialisez votre',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xFF1F2933,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'mot de passe',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xFF1F2933,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Entrez votre nouveau mot de passe',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(
                      0xFF7B8794,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nouveau mot de passe',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(
                    0xFF3E4C59,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: _obscureText,
                cursorColor: Color(0xFFF26129),
                controller: _passwordController,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Nouveau passe',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                  border: OutlineInputBorder(),
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
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  suffixIcon: togglePasswordVisibility(1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Répétez mot de passe',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(
                    0xFF3E4C59,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: _obscureText1,
                cursorColor: Color(0xFFF26129),
                controller: _password1Controller,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  labelText: 'Répétez passe',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.grey.shade600,
                  ),
                  border: OutlineInputBorder(),
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
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  suffixIcon: togglePasswordVisibility(2),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              CustomButton(
                placeHolder: 'Réinitializer',
                onPressed: _isButtonEnabled
                    ? () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => BottomNavBar(),
                        //   ),
                        // );
                      }
                    : null,
                isEnabled: _isButtonEnabled,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglePasswordVisibility(int fieldNumber) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (fieldNumber == 1) {
            _obscureText = !_obscureText;
          }
          if (fieldNumber == 2) {
            _obscureText1 = !_obscureText1;
          }
        });
      },
      icon: fieldNumber == 1
          ? _obscureText
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility)
          : _obscureText1
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
      color: Colors.grey,
    );
  }
}
