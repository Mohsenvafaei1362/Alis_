import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:alis/screens/login/login_one.dart';

import '../models/products.dart';
import '../screens/product/components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final product = Product.products;
    return AnimatedSplashScreen(
      splash: 'assets/images/logo2.png',
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      splashIconSize: 200,
      duration: 1000,
      nextScreen:
          // Test(),
          // Directionality(textDirection: TextDirection.rtl,child:Body(),),
          Directionality(
        textDirection: TextDirection.rtl,
        child: LoginOne(onChanged: (value) {}),
      ),
      splashTransition: SplashTransition.scaleTransition,
      // pageTransitionType: PageTransitionType.scale,
    );
  }
}
