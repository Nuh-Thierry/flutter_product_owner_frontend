import 'package:flutter/material.dart';
import 'package:stage_project/view/mainScreens/HomePage.dart';
import 'package:stage_project/view/mainScreens/menuscreen.dart';
import 'package:stage_project/view/mainScreens/profilescreen.dart';
import 'package:stage_project/view/mainScreens/shopscreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomePage(),
    ShopScreen(),
    MenuScreen(),
    ProfileScreen(),
  ];

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 0.7, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFFFFBFA),
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Color(0xFFCBD2D9),
        selectedItemColor: Color(0xFFF26129),
        items: [
          BottomNavigationBarItem(
            icon: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) => Transform.scale(
                scale: _pageIndex == 0 ? _animation.value : 1.0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _pageIndex == 0 ? Color(0xFFF26129) : Color(0xFFCBD2D9),
                    BlendMode.srcIn,
                  ),
                  child: child,
                ),
              ),
              child: Image.asset(
                'assets/images/home.png',
                width: 20,
                height: 20,
              ),
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) => Transform.scale(
                scale: _pageIndex == 1 ? _animation.value : 1.0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _pageIndex == 1 ? Color(0xFFF26129) : Color(0xFFCBD2D9),
                    BlendMode.srcIn,
                  ),
                  child: child,
                ),
              ),
              child: Image.asset(
                'assets/images/Shopping Cart.png',
                width: 20,
                height: 20,
              ),
            ),
            label: 'Commander',
          ),
          BottomNavigationBarItem(
            icon: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) => Transform.scale(
                scale: _pageIndex == 2 ? _animation.value : 1.0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _pageIndex == 2 ? Color(0xFFF26129) : Color(0xFFCBD2D9),
                    BlendMode.srcIn,
                  ),
                  child: child,
                ),
              ),
              child: Image.asset(
                'assets/images/reserve.png',
                width: 20,
                height: 20,
              ),
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) => Transform.scale(
                scale: _pageIndex == 3 ? _animation.value : 1.0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _pageIndex == 3 ? Color(0xFFF26129) : Color(0xFFCBD2D9),
                    BlendMode.srcIn,
                  ),
                  child: child,
                ),
              ),
              child: Image.asset(
                'assets/images/User.png',
                width: 20,
                height: 20,
              ),
            ),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
      body: _pages[_pageIndex],
    );
  }
}
