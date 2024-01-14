import 'package:flutter/material.dart';
import 'package:stage_project/view/mainScreens/HomePage.dart';
import 'package:stage_project/view/mainScreens/menuscreen.dart';
import 'package:stage_project/view/mainScreens/profilescreen.dart';
import 'package:stage_project/view/mainScreens/shopscreen.dart';

class BottomNavigationBarForApp extends StatefulWidget {
  final int pageIndex;

  const BottomNavigationBarForApp({super.key, required this.pageIndex});

  @override
  State<BottomNavigationBarForApp> createState() =>
      _BottomNavigationBarForAppState();
}

class _BottomNavigationBarForAppState extends State<BottomNavigationBarForApp>
    with SingleTickerProviderStateMixin {
  int _pageIndex = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _pageIndex = widget.pageIndex;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.pageIndex,
      onTap: (index) {
        _controller.forward(from: 0);
        if (index == 0) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => HomePage()));
        } else if (index == 1) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => ShopScreen()),
              (route) => false);
        } else if (index == 2) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => MenuScreen()),
              (route) => false);
        } else if (index == 3) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => ProfileScreen()));
        }
      },
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
      backgroundColor: Color(0xFFFFFBFA),
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Color(0xFFCBD2D9),
      selectedItemColor: Color(0xFFF26129),
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
