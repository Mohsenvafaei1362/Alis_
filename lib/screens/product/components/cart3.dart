import 'package:alis/screens/product/components/body.dart';
import 'package:alis/screens/product/components/online_payment.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Cart3 extends StatelessWidget {
  const Cart3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
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
                        child: Icon(Icons.keyboard_arrow_right)),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'تایید آدرس و پرداخت سفارش',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'امتیاز شما : 100',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: size.width,
                  height: size.height * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage('assets/images/5555.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('مشهد - خبابان احمد آباد - نبش طالقانی 3'
                        .toPersianDigit()),
                    Text(
                      '09909680720'.toPersianDigit(),
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        width: size.width / 2.5,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('مدیریت آدرس ها'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 35,
                        width: size.width / 3.5,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_location_alt_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'ویرایش',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(12),
              //   child: Container(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text('کد تخفیف دارید؟'),
              //         Container(
              //           width: size.width * 0.3,
              //           height: size.height * 0.05,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(5),
              //             color: Colors.green,
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Icon(
              //                 Icons.discount_rounded,
              //                 color: Colors.white,
              //               ),
              //               SizedBox(
              //                 width: 15,
              //               ),
              //               Text(
              //                 'وارد کردن',
              //                 style: TextStyle(color: Colors.white),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
             
              // Padding(
              //   padding: const EdgeInsets.all(12),
              //   child: Text(
              //     'شیوه پرداخت',
              //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              //   ),
              // ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Directionality(textDirection: TextDirection.rtl, child: OnlinePayment(),),
                    ),
                  );
                },
                child: Pardakht(
                  size: size,
                  text1: 'پرداخت ',
                  image: 'assets/images/payment-method.png',
                ),
              ),
              // Pardakht(
              //   size: size,
              //   text1: 'پرداخت اعتباری',
              //   image: 'assets/images/debit-card.png',
              // ),
              // Pardakht(
              //   size: size,
              //   text1: 'پرداخت در محل',
              //   image: 'assets/images/smartphone.png',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pardakht extends StatelessWidget {
  const Pardakht({
    Key? key,
    required this.size,
    required this.image,
    required this.text1,
  }) : super(key: key);

  final Size size;
  final String image, text1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        width: size.width,
        height: size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 24,
                height: 24,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                text1,
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
