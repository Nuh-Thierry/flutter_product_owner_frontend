import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stage_project/widgets/commandwidget/ingredientCon.dart';
import 'package:stage_project/widgets/commandwidget/supllementText.dart';
import 'package:stage_project/widgets/commandwidget/texttaille.dart';
import 'package:stage_project/widgets/text/text4.dart';

class AjouterProduit extends StatefulWidget {
  const AjouterProduit({super.key});

  @override
  State<AjouterProduit> createState() => _AjouterProduitState();
}

class _AjouterProduitState extends State<AjouterProduit> {
  bool showEditRow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/imageCommande.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 54,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 54,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showEditRow = true;
                      });
                    },
                    child: Visibility(
                      visible: !showEditRow,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Pizza jambon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(
                    0xff1f2933,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: showEditRow,
              child: EditRow(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text4(text: 'Ingrédients'),
                    SizedBox(height: 20),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        IngredientContainer(text: 'Mozzarela'),
                        IngredientContainer(text: 'Escalope'),
                        IngredientContainer(text: 'Burrata'),
                        IngredientContainer(text: 'couilis tomates'),
                        IngredientContainer(text: 'Huille d\'olive'),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text4(text: 'Taille'),
                    SizedBox(
                      height: 20,
                    ),
                    TextTaille(text: 'Normal (7.500dt)'),
                    SizedBox(
                      height: 10,
                    ),
                    TextTaille(text: 'Moyenne (12.500dt)'),
                    SizedBox(
                      height: 10,
                    ),
                    TextTaille(
                      text: 'Grande (15.500dt)',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text4(text: 'Suppléments'),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Ajoutez ce que vous aimez',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xff9aa5b1,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SuppllementText(text: 'Salami', prix: '0.700dt'),
                    SizedBox(
                      height: 20,
                    ),
                    SuppllementText(text: 'Kwika', prix: '0.700dt'),
                    SizedBox(
                      height: 20,
                    ),
                    SuppllementText(text: 'Merguez', prix: '1.500dt'),
                    SizedBox(
                      height: 20,
                    ),
                    SuppllementText(text: 'Kebab', prix: '2.200dt'),
                    SizedBox(
                      height: 20,
                    ),
                    SuppllementText(text: 'Thon', prix: '2.500dt'),
                    SizedBox(
                      height: 20,
                    ),
                    SuppllementText(text: 'Charwama', prix: '2.400dt'),
                    SizedBox(
                      height: 20,
                    ),
                    SuppllementText(text: 'Escalope', prix: '2.400dt'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditRow extends StatefulWidget {
  @override
  State<EditRow> createState() => _EditRowState();
}

class _EditRowState extends State<EditRow> {
  int quantity = 1;

  void _increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isQuantityGreaterThanOne = quantity > 1;

    Color containerColor =
        isQuantityGreaterThanOne ? Color(0xfff26129) : Color(0xfff4f4f6);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            _decreaseQuantity();
          },
          child: Container(
            height: 35.39,
            width: 35.39,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: containerColor),
            child: Center(
              child: Text(
                '-',
                style: TextStyle(
                  fontSize: 18.67,
                  fontWeight: FontWeight.w700,
                  color: Color(
                    0xffd3d5da,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          '$quantity',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(
                0xff121826,
              )),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            _increaseQuantity();
          },
          child: Container(
            height: 35.39,
            width: 35.39,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xfff26129),
            ),
            child: Center(
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 18.67,
                  fontWeight: FontWeight.w700,
                  color: Color(
                    0xffd3d5da,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
