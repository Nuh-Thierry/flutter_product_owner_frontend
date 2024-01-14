import 'package:flutter/material.dart';
import 'package:stage_project/widgets/profileScreenWidgets/uncheckedbox.dart';

class ChoisirSupplement extends StatefulWidget {
  final String text;
  final String prix;
  final ValueChanged<bool>? onChanged;

  const ChoisirSupplement(
      {super.key, required this.text, required this.prix, this.onChanged});

  @override
  State<ChoisirSupplement> createState() => _ChoisirSupplementState();
}

class _ChoisirSupplementState extends State<ChoisirSupplement> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(
                  0xff323f4b,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 150,
          ),
          Expanded(
            child: Text(
              widget.prix,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(
                  0xff323f4b,
                ),
              ),
            ),
          ),
          UnCheckBox(
            isChecked: isChecked,
            onChanged: (newValue) {
              setState(() {
                isChecked = newValue;
              });
              widget.onChanged?.call(isChecked);
            },
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
