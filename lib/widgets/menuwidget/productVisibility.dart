import 'package:flutter/material.dart';
import 'package:stage_project/widgets/menuwidget/produitContainer.dart';
import 'modelbottonsheet.dart';

class ProductMenuContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color(0xFFF4F4F6),
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
                      Icons.search,
                      color: Color(
                        0xFFD3D5DA,
                      ),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) => MenuBottomSheet(),
                        );
                      },
                      child: Image.asset(
                        'assets/images/gg.png',
                      ),
                    ),
                    hintText: 'Ex: Pizza',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(
                        0xFFD3D5DA,
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ProduitContainer(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
