import 'package:flutter/material.dart';
import 'package:stage_project/widgets/menuwidget/supprimerbottomsheet.dart';

import 'dupliquerDialoque.dart';

class SupplementWidegt extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      'value': 'Dupliquer',
      'style': TextStyle(
        color: Color(0xFF1f2933),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    },
    {
      'value': 'Supprimer',
      'style': TextStyle(
        color: Color(0xFFF26129),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    },
  ];

  final String text;
  final String prix;

  SupplementWidegt({super.key, required this.text, required this.prix});

  void _showConfirmationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => DeleteBottomSheet(
        onDelete: () {
          // Perform the delete operation here
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => DupliquerDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1.5,
              color: Color(
                0xfff4f4f6,
              )),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1f2633),
                  ),
                ),
              ),
              Text(
                prix,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xfff26129),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              PopupMenuButton<String>(
                itemBuilder: (context) {
                  return menuItems.map((item) {
                    return PopupMenuItem<String>(
                      value: item['value'],
                      child: Text(
                        item['value'],
                        style: item['style'],
                      ),
                    );
                  }).toList();
                },
                onSelected: (selectedItem) {
                  if (selectedItem == 'Supprimer') {
                    _showConfirmationBottomSheet(context);
                  } else {
                    _showInfoDialog(context);
                  }
                },
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
