import 'package:alis/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../payment/success.dart';

class DetailOnline extends StatefulWidget {
  const DetailOnline({Key? key}) : super(key: key);

  @override
  State<DetailOnline> createState() => _DetailOnlineState();
}

class _DetailOnlineState extends State<DetailOnline> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    Size size = MediaQuery.of(context).size;
    String? val;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.86,
                // color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      // height: size.height * 0.06,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black12, width: 1),
                        ),
                      ),
                      // color: Colors.red,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.keyboard_arrow_right_outlined),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          // Text('پرداخت')
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("پرداخت از طریق کارت بانکی"),
                          Text(
                            'پرداخت آنلاین با تمامی کارت های بانکی',
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width,
                      color: Colors.white,
                      padding: EdgeInsets.all(32),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'انتخاب درگاه پرداخت',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/images/mellat.png',
                                width: 80,
                                height: 80,
                              ),
                              Image.asset(
                                'assets/images/melli.png',
                                width: 50,
                                height: 50,
                              ),
                              Image.asset(
                                'assets/images/sepah.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      color: Colors.white,
                      padding: EdgeInsets.only(right: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'سبد خرید شما',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '${cartController.products.length} کالا',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      width: size.width,
                      height: size.height * 0.4,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          // color: Colors.lightBlue,
                          // border: Border(
                          //   bottom: BorderSide(
                          //     color: Colors.black26,
                          //     width: 1,
                          //   ),
                          // ),
                          // color: Colors.blue,
                          ),
                      child: ListView.builder(
                        itemCount: cartController.products.length,
                        itemBuilder: (context, index) {
                          final data =
                              cartController.products.keys.toList()[index];
                          // final data1 = cartController.products.value.toList()[index];
                          return Container(
                            // color: Colors.deepOrange,
                            padding: EdgeInsets.fromLTRB(0, 0, 32, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: size.width * 0.15,
                                      child: Image.asset(
                                        data.image,
                                        // width: 68,
                                        height: size.height * 0.1,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'قیمت',
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 11,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              // '${cartController.products[0].price}'
                                              // .toPersianDigit(),
                                              '${data.price}'.toPersianDigit(),
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.07,
                padding: EdgeInsets.symmetric(horizontal: 40),
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('جمع کل'),
                        SizedBox(
                          height: size.height * 0.003,
                        ),
                        Text(cartController.total),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(Directionality(
                            textDirection: TextDirection.rtl,
                            child: Success()));
                      },
                      child: Container(
                        // width: size.width * 0.3,
                        // height: size.height * 0.5,
                        child: Text('پرداخت'),
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
