import 'package:alis/screens/buy.dart/buy4.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import 'buy2.dart';
import 'buy3.dart';

class Buy extends StatelessWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 32, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'سفارش های من',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Directionality(
                            textDirection: TextDirection.rtl,
                            child: Body(),
                          ),
                        ),
                      );
                    },
                    child: Icon(Icons.exit_to_app),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 24, 32, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      // Image.asset(
                      //   'assets/icons/zero.png',
                      //   width: 20,
                      //   height: 20,
                      // ),
                      SizedBox(
                        width: 7,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: Buy2(),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'سفارش های بسته',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/zero.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'سفارش های باز',
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Container(
                  width: size.width,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black45, width: 1),
                    ),
                    color: Colors.white,
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(children: [
                              Text(
                                'کد سفارش',
                                style: TextStyle(color: Colors.black45),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('263012304'.toPersianDigit()),
                            ]),
                            Row(
                              children: [
                                Text(
                                  'تاریخ سفارش: ',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black45),
                                ),
                                Text(
                                  '1401/04/22'.toPersianDigit(),
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'تاریخ تحویل: ',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black45),
                                ),
                                Text(
                                  '1401/04/28'.toPersianDigit(),
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'نوع سفارش: ',
                                  style: TextStyle(color: Colors.black45),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('پرداخت در محل'),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            // Image.asset(
                            //   'assets/images/03.jpg',
                            //   width: 48,
                            //   height: 48,
                            // ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(Buy4());
                                  },
                                  child: Container(
                                    width: size.width * 0.4,
                                    height: size.height * 0.05,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'پیگیری سفارش',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                // InkWell(
                                //   onTap: () {
                                //     // Get.to(
                                //     //   Directionality(
                                //     //     textDirection: TextDirection.rtl,
                                //     //     child: Support(),
                                //     //   ),
                                //     // );
                                //   },
                                //   child: Container(
                                //     width: size.width * 0.2,
                                //     height: size.height * 0.05,
                                //     decoration: BoxDecoration(
                                //         color: Colors.red,
                                //         borderRadius:
                                //             BorderRadius.circular(10)),
                                //     child: Center(
                                //       child: Text(
                                //         'ثبت شکایت',
                                //         style: TextStyle(color: Colors.white),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Text('50,000'.toPersianDigit()),
                                Image.asset(
                                  'assets/icons/tom.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(Buy3());
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )

            // Image.asset(
            //   'assets/images/t5.jpg',
            //   width: double.infinity,
            //   height: 400,
            // ),
            // Text(
            //   'شما در حال حاضر سفارش باز ندارید',
            //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            // ),
          ],
        ),
      ),
    );
  }
}
