import 'package:flutter/material.dart';
import 'package:stage_project/widgets/commandwidget/commandebottomsheet.dart';

class ChangerProduit extends StatefulWidget {
  const ChangerProduit({super.key});

  @override
  State<ChangerProduit> createState() => _ChangerProduitState();
}

class _ChangerProduitState extends State<ChangerProduit> {
  bool isChecked = false;
  bool isChecked1 = false;
  int quantity = 1;
  int quantity1 = 1;

  // void _onCheckButtonTap() {
  //   setState(() {
  //     isChecked = !isChecked;
  //   });
  // }

  // void _onSupprimerButtonTap() {
  //   // Add your action for the "Supprimer" button here
  // }

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

  void _increaseQuantity1() {
    setState(() {
      quantity1++;
    });
  }

  void _decreaseQuantity1() {
    setState(() {
      if (quantity1 > 1) {
        quantity1--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isQuantityGreaterThanOne = quantity > 1;
    bool isQuantityGreaterThanOne1 = quantity1 > 1;
    Color containerColor =
        isQuantityGreaterThanOne ? Color(0xfff26129) : Color(0xfff4f4f6);
    Color containerColor1 =
        isQuantityGreaterThanOne1 ? Color(0xfff26129) : Color(0xfff4f4f6);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              width: 180,
            ),
            TextButton(
              onPressed: isChecked || isChecked1 ? () {} : null,
              child: Text(
                'Supprimer',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: isChecked || isChecked1
                      ? Color(0xffe0574e)
                      : Color(
                          0xff121826,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isChecked ? Color(0xfff26129) : Color(0xffffffff),
                      border: Border.all(
                        width: isChecked ? 0 : 1.5,
                        color: Color(0xffa0a3a8),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color: isChecked ? Colors.white : Color(0xffa0a3a8),
                        size: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/imageCommande.png',
                    height: 88,
                    width: 88,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8,
                      bottom: 8,
                      top: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pizza jambon',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(
                              0xff121826,
                            ),
                          ),
                        ),
                        Text(
                          'Mozzarella, Escalope, Coulis de tomates, Huile d\'olive, Burrata,...',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xff6c727f,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff121826),
                            ),
                            children: [
                              TextSpan(
                                text: '7',
                                style: TextStyle(
                                  color: Color(0xff121826),
                                ),
                              ),
                              TextSpan(
                                text: '.500dt',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(
                                    0xffa0a3a8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _decreaseQuantity();
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: containerColor),
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
                      height: 5,
                    ),
                    Text(
                      '$quantity',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(
                            0xff121826,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        _increaseQuantity();
                      },
                      child: Container(
                        height: 24,
                        width: 24,
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
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isChecked1 = !isChecked1;
                    });
                  },
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isChecked1 ? Color(0xfff26129) : Colors.white,
                        border: Border.all(
                          width: isChecked1 ? 0 : 1.5,
                          color: Color(0xffa0a3a8),
                        )),
                    child: Center(
                      child: Icon(
                        Icons.check,
                        color:
                            isChecked1 ? Color(0xffffffff) : Color(0xffa0a3a8),
                        size: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/images/imageCommande.png',
                    height: 88,
                    width: 88,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8,
                      bottom: 8,
                      top: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pizza jambon',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(
                              0xff121826,
                            ),
                          ),
                        ),
                        Text(
                          'Mozzarella, Escalope, Coulis de tomates, Huile d\'olive, Burrata,...',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xff6c727f,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff121826),
                            ),
                            children: [
                              TextSpan(
                                text: '7',
                                style: TextStyle(
                                  color: Color(0xff121826),
                                ),
                              ),
                              TextSpan(
                                text: '.500dt',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(
                                    0xffa0a3a8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _decreaseQuantity1();
                      },
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: containerColor1,
                        ),
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
                      height: 5,
                    ),
                    Text(
                      '$quantity1',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(
                            0xff121826,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        _increaseQuantity1();
                      },
                      child: Container(
                        height: 24,
                        width: 24,
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
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) => CommandBottomSheet(),
                );
              },
              child: Container(
                height: 56,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1.5,
                    color: Color(
                      0xffcbd2d9,
                    ),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Color(
                      0xffcbd2d9,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 155,
                    height: 56,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFEEEE),
                      border: Border.all(
                        color: Color(0xFFFFEEEE),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Annuler',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFE0574E),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 155,
                      height: 56,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF26129),
                        border: Border.all(
                          color: Color(0xFFFFEEEE),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Enregistrer',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFfffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
