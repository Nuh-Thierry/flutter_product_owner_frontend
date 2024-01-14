import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:stage_project/view/authScreens/codeverification1.dart';
import 'package:stage_project/view/authScreens/conditionutilisation.dart';
import 'package:stage_project/view/authScreens/loginScreen.dart';
import 'package:stage_project/widgets/profileScreenWidgets/textfield.dart';
import 'package:stage_project/widgets/profileScreenWidgets/uncheckedbox.dart';

import '../../widgets/custombuttom.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repetePasswordController =
      TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;
  bool _isButtonEnabled = false;
  bool _isCheckboxChecked = false;

  Country selectedCountry = Country(
    phoneCode: "216",
    countryCode: "TN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Tunisia",
    example: "Tunisia",
    displayName: "Tunisia",
    displayNameNoCountryCode: "TN",
    e164Key: "",
  );

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(_validateFields);
    _passwordController.addListener(_validateFields);
    _repetePasswordController.addListener(_validateFields);
    _phoneController.addListener(_validateFields);
  }

  void _validateFields() {
    setState(() {
      _isButtonEnabled = _usernameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _phoneController.text.isNotEmpty &&
          _repetePasswordController.text.isNotEmpty &&
          _isCheckboxChecked;
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    _repetePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'LOGO',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(
                      0xFFF26129,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'crée un nouveau',
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
                  'compte',
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
              Text(
                'Nom et Prénom',
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
              CustomTextField(
                prefixIcon: Image.asset('assets/images/user1.png'),
                placeholder: 'votre nom et prénom',
                controller: _usernameController,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Téléphone',
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
                cursorColor: Colors.purple,
                controller: _phoneController,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: "Enter phone number",
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
                  prefixIcon: Container(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: CountryListThemeData(
                              bottomSheetHeight: 550,
                            ),
                            onSelect: (value) {
                              setState(() {
                                selectedCountry = value;
                              });
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  suffixIcon: _phoneController.text.length > 9
                      ? Container(
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        )
                      : null,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Mot de passe',
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
              CustomTextField(
                obscureText: _obscureText,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                suffixIcon: togglePasswordVisibility(1),
                placeholder: 'Votre mot de passe',
                controller: _passwordController,
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
              CustomTextField(
                obscureText: _obscureText1,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                suffixIcon: togglePasswordVisibility(2),
                placeholder: 'Répétez mot de passe',
                controller: _repetePasswordController,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UnCheckBox(onChanged: (value) {
                      setState(
                        () {
                          _isCheckboxChecked = value;
                          _validateFields();
                        },
                      );
                    }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'J\ai lu et j\accepte ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(
                                0xFF616E7C,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ConditionUtilsationScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'les conditions générales ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(
                                  0xFFF26129,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConditionUtilsationScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'd\'utilisation.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(
                              0xFFF26129,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                placeHolder: 'S\inscrire',
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CodeVerification1Screen(),
                          ),
                        );
                      }
                    : null,
                isEnabled: _isButtonEnabled,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Vous avez déjà un compte?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(
                        0xFF1F2933,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      ' Connectez-vous',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(
                          0xFFF26129,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
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
