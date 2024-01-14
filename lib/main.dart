import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:stage_project/view/mainScreens/HomePage.dart';
import 'package:stage_project/view/mainScreens/menuscreen.dart';
import 'package:stage_project/view/mainScreens/profilescreen.dart';
import 'package:stage_project/view/mainScreens/shopscreen.dart';
import 'package:stage_project/view/onbaording/splashscreen.dart';
import 'package:stage_project/widgets/menuwidget/AjouterIngredientScreen.dart';
import 'package:stage_project/widgets/menuwidget/ajouterSupplement.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(statusBarColor: Colors.grey),
    // );
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Manrope',
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/shop': (context) => ShopScreen(),
        '/menu': (context) => MenuScreen(),
        '/profile': (context) => ProfileScreen(),
        '/ajouter_ingredient': (context) => AjouterIngredientScreen(),
        '/ajouter_supplement': (context) => AjouterSupplemnt(),
      },
    );
  }
}
