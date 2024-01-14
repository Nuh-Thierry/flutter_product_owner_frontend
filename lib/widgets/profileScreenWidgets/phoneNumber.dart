import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumber();
}

class _PhoneNumber extends State<PhoneNumber> {
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

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
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.purple,
      controller: phoneController,
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
        suffixIcon: phoneController.text.length > 9
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
    );
  }
}
