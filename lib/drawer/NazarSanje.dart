import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reviews_slider/reviews_slider.dart';

import '../controller/controller.dart';

class NazarSanje extends StatefulWidget {
  const NazarSanje({Key? key}) : super(key: key);

  @override
  State<NazarSanje> createState() => _NazarSanjeState();
}

class _NazarSanjeState extends State<NazarSanje> {
  late int selectedValue1;
  late int selectedValue2;
  late int selectedValue3;
  late int selectedValue4;
  late int selectedValue5;
  late int selectedValue6;
  late int selectedValue7;
  void onChange1(int value) {
    setState(() {
      selectedValue1 = value;
    });
  }

  void onChange2(int value) {
    setState(() {
      selectedValue2 = value;
    });
  }

  void onChange3(int value) {
    setState(() {
      selectedValue3 = value;
    });
  }

  void onChange4(int value) {
    setState(() {
      selectedValue4 = value;
    });
  }

  void onChange5(int value) {
    setState(() {
      selectedValue5 = value;
    });
  }

  void onChange6(int value) {
    setState(() {
      selectedValue6 = value;
    });
  }

  void onChange7(int value) {
    setState(() {
      selectedValue7 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final CartController cartController = Get.put(CartController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.06,
                padding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(CupertinoIcons.arrow_right),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'فرم نظر سنجی',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Colors.green,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(text: 'شرکت در نظر سنجی'),
                                Tab(text: 'لیست نظر سنجی ها'),
                              ],
                            ),
                          ),
                          Container(
                            height: size.height, //height of TabBarView
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              border: Border(
                                top: BorderSide(color: Colors.grey, width: 0.5),
                              ),
                            ),
                            child: TabBarView(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(' نحوه برخورد کارشناسان واحد فروش'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ReviewSlider(
                                        onChange: onChange1,
                                        initialValue: 4,
                                        options: [
                                          'عالی',
                                          'خیلی خوب',
                                          'خوب',
                                          'متوسط',
                                          'ضعیف',
                                        ],
                                      ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceAround,
                                      //   children: [
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.green,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'عالی',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.lightGreen,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'خوب',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.amber,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'متوسط',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.red,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'ضعیف',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      Divider(
                                        color: Colors.black26,
                                      ),
                                      Text('کیفیت خدمات ارائه شده'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ReviewSlider(
                                        onChange: onChange2,
                                        initialValue: 4,
                                        options: [
                                          'عالی',
                                          'خیلی خوب',
                                          'خوب',
                                          'متوسط',
                                          'ضعیف',
                                        ],
                                      ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceAround,
                                      //   children: [
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.green,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'عالی',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.lightGreen,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'خوب',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.amber,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'متوسط',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.red,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'ضعیف',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      Divider(
                                        color: Colors.black26,
                                      ),
                                      Text(
                                          'میزان انعطاف در مقابل خواسته های مشتریان'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ReviewSlider(
                                        onChange: onChange3,
                                        initialValue: 4,
                                        options: [
                                          'عالی',
                                          'خیلی خوب',
                                          'خوب',
                                          'متوسط',
                                          'ضعیف',
                                        ],
                                      ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceAround,
                                      //   children: [
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.green,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'عالی',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.lightGreen,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'خوب',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.amber,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'متوسط',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.red,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'ضعیف',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      Divider(
                                        color: Colors.black26,
                                      ),
                                      Text(
                                          'میزان رضایتمندی از کیفیت محصولات شرکت'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ReviewSlider(
                                        onChange: onChange4,
                                        initialValue: 4,
                                        options: [
                                          'عالی',
                                          'خیلی خوب',
                                          'خوب',
                                          'متوسط',
                                          'ضعیف',
                                        ],
                                      ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceAround,
                                      //   children: [
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.green,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'عالی',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.lightGreen,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'خوب',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.amber,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'متوسط',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.red,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'ضعیف',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      Divider(
                                        color: Colors.black26,
                                      ),
                                      Text('میزان رضایتمندی از قیمت محصولات'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ReviewSlider(
                                        onChange: onChange5,
                                        initialValue: 4,
                                        options: [
                                          'عالی',
                                          'خیلی خوب',
                                          'خوب',
                                          'متوسط',
                                          'ضعیف',
                                        ],
                                      ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceAround,
                                      //   children: [
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.green,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'عالی',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.lightGreen,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'خوب',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.amber,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'متوسط',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.red,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'ضعیف',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                      Divider(
                                        color: Colors.black26,
                                      ),
                                      Text('رسیدگی به درخواستهای مشتری'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ReviewSlider(
                                        onChange: onChange6,
                                        initialValue: 4,
                                        options: [
                                          'عالی',
                                          'خیلی خوب',
                                          'خوب',
                                          'متوسط',
                                          'ضعیف',
                                        ],
                                      ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceAround,
                                      //   children: [
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.green,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'عالی',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.lightGreen,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'خوب',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.amber,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'متوسط',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       width: size.width * 0.2,
                                      //       height: size.height * 0.04,
                                      //       decoration: BoxDecoration(
                                      //         color: Colors.red,
                                      //         borderRadius:
                                      //             BorderRadius.circular(5),
                                      //       ),
                                      //       child: Center(
                                      //         child: Text(
                                      //           'ضعیف',
                                      //           style: TextStyle(
                                      //             color: Colors.white,
                                      //             fontWeight: FontWeight.bold,
                                      //           ),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text(
                                      'Display Tab 2',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
