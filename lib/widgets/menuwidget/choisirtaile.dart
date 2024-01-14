import 'package:flutter/material.dart';
import 'package:stage_project/widgets/profileScreenWidgets/uncheckedbox.dart';

class ChoisirTaile extends StatefulWidget {
  final String text;
  final TextEditingController? controller;
  final ValueChanged<bool>? onChanged;

  const ChoisirTaile({
    super.key,
    required this.text,
    this.controller,
    this.onChanged,
  });

  @override
  State<ChoisirTaile> createState() => _ChoisirTaileState();
}

class _ChoisirTaileState extends State<ChoisirTaile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color borderColor = isChecked ? Color(0xff9aa5b1) : Color(0xFFe4e7eb);
    return Container(
      child: Row(
        children: [
          UnCheckBox(
            onChanged: (newValue) {
              setState(() {
                isChecked = newValue;
              });
              widget.onChanged?.call(isChecked);
            },
            borderColor: isChecked ? Color(0xff9aa5b1) : Color(0xFFe4e7eb),
          ),
          SizedBox(
            width: 20,
          ),
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
          Container(
            height: 55,
            width: 159,
            child: TextField(
              controller: widget.controller,
              cursorColor: Color(0xfff26129),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.start,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Prix(dt)',
                helperStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Color(0xffe4e7eb),
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1.5,
                    color: borderColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Color(0xff9aa5b1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
