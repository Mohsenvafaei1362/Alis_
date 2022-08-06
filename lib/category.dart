import 'package:alis/screens/product/components/body.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Category_app extends StatelessWidget {
  const Category_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        buttonBackgroundColor: Colors.red[50],
        items: <Widget>[
          Icon(Icons.playlist_add_check_circle_outlined, size: 17),
          Icon(Icons.store, size: 17),
          Icon(Icons.home_sharp, size: 17),
          Icon(Icons.attractions_sharp, size: 17),
          Icon(Icons.dashboard_customize_rounded, size: 17),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (() {
                          Navigator.pop(context);
                        }),
                        child: Icon(Icons.keyboard_backspace),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('دسته بندی ها'),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/91352.jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: Center(
                        child: Text(
                          'دسته بندی ها',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    direction: Axis.horizontal,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/ALIC-H-1.jpg',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'دوغ ها',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/63.png',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'شیر طعم دار',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/889.jpg',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'شیر ساده',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/890.jpg',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'آبمیوه تشریفاتی',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/891.jpg',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'ویت بار',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/892.jpg',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'نوشابه ها',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/893.jpg',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'نکتار',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/894.png',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'ماءالشعیر',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/895.jpg',
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'آبمیوه ها',
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
