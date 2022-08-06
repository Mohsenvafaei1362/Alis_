import 'package:flutter/material.dart';
import 'package:alis/screens/dashboard/dashboard.dart';
import 'package:alis/screens/login/login.dart';
import 'package:alis/screens/product/components/body.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  // const ProductScreen({Key? key}) : super(key: key);
  int selectedpage = 0;
  final _pageOptions = [Body(), Dashboard(), Login(onChanged: (value) {})];
  final bgcolor = [Colors.orange, Colors.pink, Colors.greenAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],

      // body: Body(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Body(),
      ),
    );
  }

  // AppBar buildAppBar(BuildContext context) {
  //   return AppBar();
  // }
}
