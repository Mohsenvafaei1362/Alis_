import 'package:alis/screens/complaints/questions/questions.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:alis/screens/settings/settings.dart';
import 'package:alis/screens/support/Ticket.dart';
import 'package:flutter/material.dart';
import 'package:alis/screens/support/support.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => Directionality(
            //               textDirection: TextDirection.rtl,
            //               child: Body(),
            //             ),
            //           ),
            //         );
            //       },
            //       child: Icon(Icons.exit_to_app),
            //     ),
            //     Text(
            //       'تماس با پشتیانی',
            //       style: TextStyle(fontWeight: FontWeight.bold),
            //     ),
            //     Text('پشتیبان علی احمدی'),
            //     Stack(
            //       children: [
            //         Icon(Icons.badge_outlined),
            //         // Image.asset(
            //         //   "assets/images/shayan(1).png",
            //         //   width: 11,
            //         //   height: 11,
            //         // ),
            //       ],
            //     ),
            //     Icon(Icons.notifications_active, color: Colors.blue),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: InkWell(
                onTap: () {
                  Get.to(
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Ticket(),
                    ),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/support.png',
                        width: 48,
                        height: 48,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('موضوع : '),
                              Text('ثبت سفارش'),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'پشتیبان : ',
                                style: TextStyle(
                                    color: Colors.blue[200], fontSize: 10),
                              ),
                              Text(
                                'علی احمدی',
                                style: TextStyle(
                                    color: Colors.blue[200], fontSize: 10),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'تاریخ ثبت تیکت: ',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black45),
                              ),
                              Text(
                                '1401/05/05'.toPersianDigit(),
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black45),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_left),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red.shade400,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Directionality(
                            textDirection: TextDirection.rtl,
                            child: Questions(),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'سوالات پرتکرار',
                      style: TextStyle(
                        fontFamily: 'IransansDn',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
