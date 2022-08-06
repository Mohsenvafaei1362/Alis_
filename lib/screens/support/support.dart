import 'package:alis/screens/product/components/body.dart';
import 'package:alis/screens/support/chatpage.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'message.dart';

class Support extends StatefulWidget {
  const Support({
    Key? key,
  }) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  final List<String> items = [
    'پرداخت ناموفق',
    'دریافت مشاوره',
    'ثبت سفارش',
    'درخواست تماس پشتیبانی با شما',
    'نارضایتی از محصول',
  ];
  String? selectedValue;
  final List<String> items2 = [
    'شماره سفارش 234684131810'.toPersianDigit(),
    'شماره سفارش 313468541242'.toPersianDigit(),
    'آخرین سفارش من',
    'سفارش من در این لیست نیست',
  ];
  String? selectedValue2;
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: HawkFabMenu(
            icon: AnimatedIcons.menu_arrow,
            fabColor: Colors.blue,
            iconColor: Colors.white,
            items: [
              // HawkFabMenuItem(
              //   label: 'پیگیری شکایت',
              //   ontap: () {
              //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       const SnackBar(content: Text('هنوز شکایتی ثبت نشده است')),
              //     );
              //   },
              //   icon: const Icon(Icons.auto_mode_rounded),
              //   color: Colors.red,
              //   labelColor: Colors.blue,
              // ),
              HawkFabMenuItem(
                label: 'چت با پشتیبانی',
                ontap: () {
                  Get.to(
                    ChatPage(),
                  );
                  // ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   // const SnackBar(content: Text('مجدد امتحان فرمایید')
                  // ),
                  // );
                },
                icon: const Icon(Icons.comment),
                labelColor: Colors.white,
                labelBackgroundColor: Colors.blue,
              ),
              // HawkFabMenuItem(
              //   label: 'امتیاز به پشتیبان',
              //   ontap: () {
              //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       const SnackBar(
              //         content: Text('هنوز با پشتیبان ارتباط برقرار نشده'),
              //       ),
              //     );
              //   },
              //   icon: const Icon(Icons.thumb_up_rounded),
              // ),
            ],
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'همه روزه',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'ساعت 8 تا 22'.toPersianDigit(),
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'مرکز تماس امور مشتریان',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '0513187'.toPersianDigit(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.all(32),
                    child: Text(
                      'برای پیگیری سفارش یا طرح سوالات خود، از طریق فرم زیر با ما در ارتباط باشید . تلاش میکنیم هرچه سریعتر به مشکل شما رسیدگی کنیم',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Text(
                              'موضوع درخواست را انتخاب فرمایید',
                              style: TextStyle(fontFamily: 'IransansDn'),
                            ),
                            items: items
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Center(
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                            fontFamily: 'IransansDn',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(12),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.black12),
                  //         borderRadius: BorderRadius.circular(10)),
                  //     height: 50,
                  //     width: double.infinity,
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(12),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: const [
                  //           Text('کدام سفارشتان دچار مشکل شده است ؟'),
                  //           Icon(Icons.arrow_right),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Text(
                              'سفارش خود را انتخاب فرمایید',
                              style: TextStyle(fontFamily: 'IransansDn'),
                            ),
                            items: items2
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Center(
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                            fontFamily: 'IransansDn',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue2,
                            onChanged: (value) {
                              setState(() {
                                selectedValue2 = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextField(
                      style: TextStyle(fontFamily: 'IransansDn'),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'توضیحات',
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.green),
                          child: const Center(
                            child: Text(
                              'ارسال',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('پیوست فایل'),
                              Icon(
                                Icons.upload,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
