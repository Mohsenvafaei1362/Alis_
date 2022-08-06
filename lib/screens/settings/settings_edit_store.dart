import 'dart:ui';

import 'package:alis/screens/login/login_sex.dart';
import 'package:alis/screens/login/login_tow_1.dart';
import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class Settings_Edit_Store extends StatelessWidget {
  const Settings_Edit_Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.06,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Directionality(
                  textDirection: TextDirection.rtl,
                  child: Login_Sex(),
                ),
              ),
            );
          },
          child: Text(
            'مرحله بعدی',
            style: TextStyle(fontFamily: 'IransansDn', fontSize: 12),
          ),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
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
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                    Text('درخواست تغییر اطلاعات فروشگاه'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: Text(
                    'اطلاعات خود را جهت ویرایش یا ایجاد فروشگاه جدید خود وارد فرمایید'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: TextField(
                  style: TextStyle(fontFamily: 'IransansDn'),
                  obscureText: false,
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.chevron_right_rounded),
                    // border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color(0xFFf0f0f0),

                    labelText: 'نام فروشگاه',

                    // hintText: 'مانند 1234567890'
                    // suffixIcon: Icon(
                    // Icons.star_rate_rounded,
                    // size: 10,
                    // color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: TextField(
                  style: TextStyle(fontFamily: 'IransansDn'),
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFf0f0f0),

                    // prefixIcon: Icon(Icons.chevron_right_rounded),
                    // border: OutlineInputBorder(),
                    labelText: 'شماره ثابت',
                    // hintText: 'مانند 1234567890'
                    // suffixIcon: Icon(
                    // Icons.star_rate_rounded,
                    // size: 10,
                    // color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: TextField(
                  style: TextStyle(fontFamily: 'IransansDn'),
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFf0f0f0),
                    // prefixIcon: Icon(Icons.chevron_right_rounded),
                    // border: OutlineInputBorder(),
                    labelText: 'کد پستی',
                    // hintText: 'مانند 1234567890'
                    // suffixIcon: Icon(
                    // Icons.star_rate_rounded,
                    // size: 10,
                    // color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: TextField(
                  style: TextStyle(fontFamily: 'IransansDn'),
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFf0f0f0),
                    // prefixIcon: Icon(Icons.chevron_right_rounded),
                    // border: OutlineInputBorder(),
                    labelText: 'شماره موبایل',
                    // hintText: 'مانند 1234567890'
                    // suffixIcon: Icon(
                    // Icons.star_rate_rounded,
                    // size: 10,
                    // color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: TextField(
                  style: TextStyle(fontFamily: 'IransansDn'),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFf0f0f0),
                    // border: OutlineInputBorder(),

                    labelText: 'آدرس',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
