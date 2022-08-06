import 'package:alis/screens/complaints/complaint_form.dart';
import 'package:alis/screens/payment/unsuccessful.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:share_plus/share_plus.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);
  final String _content =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum diam ipsum, lobortis quis ultricies non, lacinia at justo.';
  void _shareContent() {
    Share.share(_content);
  }

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
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: Unsuccessful(),
                            ),
                          ),
                        );
                      },
                      child: Icon(Icons.question_mark_rounded)),
                ]),
              ),
              Container(
                width: size.width / 1.3,
                // height: size.height / 1.4,
                decoration: BoxDecoration(

                    // color: Colors.blue,
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/43959.jpg'),
                    //   fit: BoxFit.fitWidth,
                    //   alignment: Alignment.topCenter,
                    // ),

                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Untitled-2.jpg',
                      width: size.width,
                      height: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      'پرداخت موفقیت آمیز بود',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      'از خرید شما متشکریم',
                      style: TextStyle(fontSize: 10, color: Colors.black45),
                    ),
                    Row(
                      children: [
                        Text(
                          'شماره سفارش :',
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '245794361274657927641856'.toPersianDigit(),
                          style: TextStyle(color: Colors.black45),
                        )
                      ],
                    ),
                    // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    //   Text(
                    //     '27,000'.toPersianDigit(),
                    //   ),
                    //   Image.asset(
                    //     'assets/icons/tom.png',
                    //     width: 24,
                    //     height: 24,
                    //   ),
                    // ]),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Image.asset(
                      'assets/images/printer.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'چاپ',
                      style: TextStyle(fontSize: 10),
                    ),
                  ]),
                  Column(children: [
                    InkWell(
                      onTap: _shareContent,
                      child: Image.asset(
                        'assets/images/share.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'اشتراک گذاری',
                      style: TextStyle(fontSize: 10),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width / 1.5,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
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
                      child: Text(
                        'برگشت به صفحه اصلی',
                        style: TextStyle(fontFamily: 'IransansDn'),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: size.width / 3.2,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: Complaint_Form(),
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'اعلام مغایرت',
                        style: TextStyle(fontFamily: 'IransansDn'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
