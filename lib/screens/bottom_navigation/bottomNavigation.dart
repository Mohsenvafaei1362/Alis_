import 'package:flutter/material.dart';
import 'package:alis/screens/bottom_navigation/bottom_navigation_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 65,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BottomNavigationItem(
                    iconFileName: 'login.jfif',
                    activeIconFileName: 'Home.png',
                    title: 'خانه',
                    press: () {
                      print('خانه');
                    },
                  ),
                  BottomNavigationItem(
                    iconFileName: 'login.jfif',
                    activeIconFileName: 'Articles.png',
                    title: 'دسته بندی',
                    press: () {
                      print('دسته بندی');
                    },
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  BottomNavigationItem(
                    iconFileName: 'login.jfif',
                    activeIconFileName: 'login.jfif',
                    title: 'داشبورد',
                    press: () { },
                  ),
                  BottomNavigationItem(
                    iconFileName: 'login.jfif',
                    activeIconFileName: 'login.jfif',
                    title: 'پروفایل',
                    press: () {
                      print('پروفایل');
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 85,
              height: 85,
              alignment: Alignment.topCenter,

              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(32.5),
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.black38,
                      ),
                    ]),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              // Icon(
              //   Icons.add,
              //   color: Colors.white,
              //   size: 32,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
