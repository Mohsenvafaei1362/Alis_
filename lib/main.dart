import 'package:alis/screens/buy.dart/buy2.dart';
import 'package:alis/screens/followup/endFollowup.dart';
import 'package:alis/screens/followup/followUp.dart';
import 'package:alis/screens/login/login_four.dart';
import 'package:alis/screens/login/login_four_1.dart';
import 'package:alis/screens/operation/operation.dart';
import 'package:alis/screens/product/components/Festival.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:alis/screens/product/components/cart3.dart';
import 'package:alis/screens/product/components/detail_online.dart';
import 'package:alis/screens/product/components/online_payment.dart';
import 'package:alis/screens/settings/settings_store.dart';
import 'package:alis/screens/support/message.dart';
import 'package:alis/screens/support/support_message.dart';
import 'package:alis/screens/test.dart';
import 'package:alis/screens/wallet.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:alis/constants.dart';
import 'drawer/NazarSanje.dart';
import 'screens/buy.dart/buy.dart';
import 'splash_screen/splashScreen.dart';

// const hiveBoxName = 'tasks';
void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(254, 254, 254, 254),
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 13, fontFamily: 'IransansDn'),
          bodyText1: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 16,
            fontFamily: 'IransansDn',
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          subtitle2: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        ),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
            // backgroundColor: Colors.blueAccent[700],
            ),
        primarySwatch: Colors.blue,
      ),
      // home: SplashScreen(),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child:
            //
            // SplashScreen(),
            // Support_Message(),
            // Category(),
            Body(),
        // StepperPage(),
        // EndFollowUp(),
        // FollowUp(),
        // Body(),
        // Message(),
        // CartProducts(),
        // Wallet(),
        // Settings_Store()
        // OnlinePayment(),
        // Cart3(),
        // DetailOnline(),
        // LoginFour(),
        // Buy(),
        // LoginFour_1(),
        // Test(),
        // Festival(),
        // NazarSanje(),
        // Operation(),
      ),
    );
  }
}
