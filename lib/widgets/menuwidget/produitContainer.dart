import 'package:flutter/material.dart';
import 'package:stage_project/widgets/menuwidget/dupliquerDialoque.dart';
import 'package:stage_project/widgets/menuwidget/supprimerbottomsheet.dart';
import 'package:stage_project/widgets/menuwidget/textwidgetmenu.dart';

import 'AjouterIngredientScreen.dart';

class ProduitContainer extends StatelessWidget {
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AjouterIngredientScreen(),
          ),
        );
      },
      child: Container(
        height: 109,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Color(0xFFF4F4F6),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 84,
                height: 93,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFF4F4F6),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage(
                      'assets/images/jambon.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextMenu(
                      text: 'Pizza jambon',
                      text1:
                          'Mozzarella, Escalope, Coulis de tomates, Huile d\'olive, Burrata,...',
                      text2: '7.500 DT',
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
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
