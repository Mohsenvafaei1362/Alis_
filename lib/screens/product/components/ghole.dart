// import 'package:alis/screens/product/components/introducing_ghole.dart';
import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import 'introducing_ghole.dart';

class Ghole extends StatelessWidget {
  const Ghole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                    Text('قله ی من'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: size.width,
                height: size.height * 0.3,
                child: Image.asset(
                  'assets/images/9800.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('قله:', style: TextStyle(color: Colors.black45)),
                        Text(
                          'سهند - سطح 5'.toPersianDigit(),
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('مجموع ریال:',
                            style: TextStyle(color: Colors.black45)),
                        Text('33,494'.toPersianDigit(),
                            style: TextStyle(color: Colors.black45)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('مجموع ریال کسب شده امروز:',
                            style: TextStyle(color: Colors.black45)),
                        Text('0'.toPersianDigit(),
                            style: TextStyle(color: Colors.black45)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('مجموع امتیاز:',
                            style: TextStyle(color: Colors.black45)),
                        Text('26,569'.toPersianDigit(),
                            style: TextStyle(color: Colors.black45)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('مجموع امتیاز کسب شده امروز:',
                            style: TextStyle(color: Colors.black45)),
                        Text('0'.toPersianDigit(),
                            style: TextStyle(color: Colors.black45)),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width / 2.5,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'وام های قرض الحسنه',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width / 2.5,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'بسته های اعتباری',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Introducing_Ghole(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.5,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'آموزش',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width / 2.5,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'مسابقات',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Introducing_Ghole(),
                                  )),
                        );
                      },
                      child: Container(
                        width: size.width * 0.8,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'مسیر پیشرفت',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Container(
                width: size.width,
                height: size.height * 0.3,
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'لیست تراکنش ها',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black12,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'کسب 5 امتیاز از شرکت در مسابقه',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'دریافت امتیاز',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'کسب 10 امتیاز جهت معرفی مشتری',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'دریافت امتیاز',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'کسر 15 امتیاز جهت انتقال به حساب',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'پرداخت امتیاز',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: SizedBox(
                  width: size.width * 0.9,
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'تبدیل امتیاز به وجه',
                      style: TextStyle(fontFamily: 'IransansDn'),
                    ),
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
