import 'package:flutter/material.dart';
import 'package:stage_project/widgets/commandwidget/Enattenete.dart';
import 'package:stage_project/widgets/commandwidget/enCours.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/commandwidget/completerScreen.dart';
import '../../widgets/text/text3.dart';

class ShopScreen extends StatefulWidget {
  final int initialIndex;
  final int currentIndex;

  const ShopScreen({super.key, this.initialIndex = 0, this.currentIndex = 0});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<String> items = [
    'En attente',
    'En cours',
    'Compléter',
  ];

  int currentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.initialIndex);
    currentIndex = widget.currentIndex;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarForApp(pageIndex: 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 16, right: 16),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                bottom: 20,
                top: 0,
              ),
              sliver: SliverAppBar(
                expandedHeight: 140,
                flexibleSpace: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 55),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text3(
                        text: 'Commandes',
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
                                    pageController.animateToPage(
                                      index,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: 7,
                                    bottom: 7,
                                    left: 2,
                                    right: 4,
                                  ),
                                  width: 98,
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
            ),
            SliverFillRemaining(
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: items.length,
                itemBuilder: (ctx, index) {
                  if (index == 0) {
                    return EnAttente();
                  } else if (index == 1) {
                    return EnCoursScreen();
                  } else {
                    return CompleterScreen();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
