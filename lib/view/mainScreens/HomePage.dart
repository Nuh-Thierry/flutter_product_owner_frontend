import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:stage_project/widgets/mainScreenWidgets/container_widget.dart';
import 'package:stage_project/widgets/mainScreenWidgets/product_cart_widget.dart';
import 'package:stage_project/widgets/text/text1.dart';

import '../../widgets/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarForApp(pageIndex: 0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 55,
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    child: Image.asset('assets/images/Ellipse 28.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 16,
                        child: Text(
                          'Bonjour!',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6C727F),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 24,
                        child: Text(
                          'Salut, Thierry',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color(0xFF121826),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE4E7EB), width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        onTap: () => _selectDate(context),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedDate == null
                                    ? 'Month,Year'
                                    : DateFormat('MMMM  yyyy')
                                        .format(selectedDate!),
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: selectedDate == null
                                      ? Color(0xFF1F2933)
                                      : Color(0xFF1F2933),
                                ),
                              ),
                              Icon(
                                Icons.expand_more,
                                color: Color(0xFF6C727F),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text1(text: 'Statistiques Mensuelles'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                children: [
                  ContainerWidget(
                    number: 65,
                    text: 'Total Produits',
                    icon: Image.asset(
                      'assets/images/note.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  ContainerWidget(
                    number: 145,
                    text: 'Total Livraison',
                    icon: Image.asset(
                      'assets/images/group.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                children: [
                  ContainerWidget(
                    number: 145,
                    text: 'Total revenuess',
                    icon: Icon(
                      Iconsax.empty_wallet,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  ContainerWidget(
                    number: 98,
                    text: 'Total Clients',
                    icon: Icon(
                      Iconsax.profile_2user,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text1(text: 'Menu tendances Mensuels'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(0xFFFEEFEA),
                    width: 2.0,
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ProductCartWidget(
                      image: AssetImage('assets/images/pizza fromage.jpg'),
                      description: 'Pizza au fromage pour les enfants',
                      price: 100,
                      commande: '#1',
                    ),
                    ProductCartWidget(
                      image: AssetImage('assets/images/burger.jpg'),
                      description: 'Burger avec frites',
                      price: 100,
                      commande: '#2',
                    ),
                    ProductCartWidget(
                      image: AssetImage('assets/images/grand burger.jpg'),
                      description: 'Grand burger avec frites',
                      price: 100,
                      commande: '#3',
                    ),
                    ProductCartWidget(
                      image: AssetImage('assets/images/sandwitch.jpg'),
                      description: 'Sandwitch kefteji',
                      price: 100,
                      commande: '#4',
                    ),
                    ProductCartWidget(
                      image: AssetImage('assets/images/pizza.jpg'),
                      description: 'Pizza au fromage & salami jambon',
                      price: 100,
                      commande: '#5',
                    ),
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
