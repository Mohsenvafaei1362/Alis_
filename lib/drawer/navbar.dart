import 'package:alis/screens/login/login_five.dart';
import 'package:alis/screens/message_box/message_box.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/Invitation.dart';
import '../screens/buy.dart/buy.dart';
import '../screens/complaints/complaint.dart';
import '../screens/customer.dart';
import '../screens/discount.dart';
import '../screens/operation/operation.dart';
import '../screens/product/components/ghole.dart';
import '../screens/product/components/introducing_ghole.dart';
import '../screens/profile/profile.dart';
import '../screens/settings/settings.dart';
import '../screens/settings/settings_atm.dart';
import '../screens/support/support.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import 'NazarSanje.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // const NavBar({Key? key}) : super(key: key);
  final List<String> items = <String>[
    'مسیر پیشرفت',
    'باشگاه من',
    'تراکنش های من',
  ];

  String? selectedValue;
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Row(
              children: [
                Text('فرهاد رضوانی'),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'امتیاز شما : 100'.toPersianDigit(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
            accountEmail: Row(
              children: [
                Text('09909680620'.toPersianDigit()),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'ویزیتور',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                    ),
                  ),
                ),
              ],
            ),
            currentAccountPicture: CircleAvatar(
              child: Stack(
                children: [
                  Container(
                    child: ClipOval(
                      child: Icon(
                        CupertinoIcons.person_crop_circle_fill,
                        size: 70,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: Ghole(),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        // height: size.height * 0.7,
                        // margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                        // padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              // color: Colors.red,
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/goal.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              // image: DecorationImage(
              //   image: AssetImage('assets/images/background.jpg'),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('پروفایل'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile(size: size)),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('صندوق پیام ها'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Message_Box(),
                  ),
                ),
              );
            },
            trailing: Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  '2'.toPersianDigit(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('مرکز پشتیبانی'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Support(),
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopify_rounded),
            title: Text('سفارش های من'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Buy(),
                ),
              );
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.people),
            title: Text(
              'باشگاه مشتریان',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                // color: Theme.of(context).hintColor,
              ),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 50, 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: Introducing_Ghole(),
                              ),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'مسیر پیشرفت',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                // color: Theme.of(context).hintColor,
                              ),
                            ),
                            // Spacer(),
                            // Icon(
                            //   Icons.keyboard_arrow_left_rounded,
                            //   color: Colors.lightBlue,
                            // ),
                            // SizedBox(width: 15),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: Customer_Club(),
                              ),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'باشگاه من',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                // color: Theme.of(context).hintColor,
                              ),
                            ),
                            // Spacer(),
                            // Icon(
                            //   Icons.keyboard_arrow_left_rounded,
                            //   color: Colors.lightBlue,
                            // ),
                            // SizedBox(width: 15),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: Operation(),
                              ),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'لیست تراکنش ها',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                // color: Theme.of(context).hintColor,
                              ),
                            ),
                            // Spacer(),
                            // Icon(
                            //   Icons.keyboard_arrow_left_rounded,
                            //   color: Colors.lightBlue,
                            // ),
                            // SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.share_rounded),
            title: Text('دعوت از دوستان'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Invitation(),
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.chat_rounded),
            title: Text('شکایت مشتری'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Complaint(),
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.square_list_fill),
            title: Text('نظر سنجی'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: NazarSanje(),
                  ),
                ),
              );
            },
          ),
          Divider(
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('تنظیمات'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Settings(),
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('خدمات تخفیف'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Discount(),
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('معرفی حساب بانکی'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Settings_ATM(),
                  ),
                ),
              );
            },
          ),
          Divider(
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('خروج'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
