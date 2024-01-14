import 'package:flutter/material.dart';
import 'package:stage_project/widgets/menuwidget/AjouterIngredientScreen.dart';
import 'package:stage_project/widgets/menuwidget/ajouterSupplement.dart';
import 'package:stage_project/widgets/menuwidget/productVisibility.dart';
import 'package:stage_project/widgets/menuwidget/supplements.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/text/text3.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<String> items = [
    'Produits',
    'Suppléments',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarForApp(pageIndex: 2),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 16, right: 16),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 140,
              flexibleSpace: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text3(
                      text: 'Menu',
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width * 0.97,
                    decoration: BoxDecoration(
                      color: Color(0xFFFEEFEA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: items.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(7),
                                width: 152,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: currentIndex == index
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    items[index],
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: currentIndex == index
                                          ? Color(0xfff26129)
                                          : Color(0xff1f2933),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 3,
                  right: 3,
                  bottom: 5,
                ),
                child: Container(
                  color: Colors
                      .white, // Replace this with your desired background color
                  child: currentIndex == 0
                      ? ProductMenuContent()
                      : SupplementMenuContent(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AjouterIngredientScreen(),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AjouterSupplemnt()),
            );
          }
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xfff26129),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
