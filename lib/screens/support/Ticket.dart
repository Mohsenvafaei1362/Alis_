import 'package:alis/screens/complaints/questions/questions.dart';
import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ticket extends StatelessWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    Text(
                      'تیکت من',
                      style: TextStyle(fontFamily: 'IransansDn'),
                    ),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: size.width * 0.38,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.blue),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: Colors.blue,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'پشتیبان: ',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 11,
                                fontFamily: 'IransansDn'),
                          ),
                          Text(
                            'علی احمدی',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 11,
                                fontFamily: 'IransansDn'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'وضعیت تیکت: ',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.green,
                        fontFamily: 'IransansDn'),
                  ),
                  Text(
                    'بسته شده',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.black45,
                        fontFamily: 'IransansDn'),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // width: size.width ,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          border: Border.all(color: Colors.red),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'با سلام چجوری سفارش خودم رو ثبت کنم؟',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  fontFamily: 'IransansDn'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.done_rounded,
                                  size: 10,
                                ),
                                Text(
                                  '15:40'.toPersianDigit(),
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width * 0.7,
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          border: Border.all(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'سلام بر شما\nبعد از اضافه کردن کالا به سبد خرید می توانید به مرحله بعد رفته و پس از وارد کردن اطلاعات دریافت کننده به مرحله پرداخت وارد شوید و خرید خود را نهایی فرمایید',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    fontFamily: 'IransansDn'),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '15:41'.toPersianDigit(),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // width: size.width * 0.7,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          border: Border.all(color: Colors.red),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ممنونم از راهنمایتون\nروز خوبی داشته باشید',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  fontFamily: 'IransansDn'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.done_rounded,
                                  size: 10,
                                ),
                                Text(
                                  '15:42'.toPersianDigit(),
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8),
                        // width: size.width * 0.7,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'سلامت باشید\nشما هم روز خوبی داشته باشید',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  fontFamily: 'IransansDn'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '15:43'.toPersianDigit(),
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              SizedBox(
                width: size.width * 0.9,
                height: size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    AwesomeDialog(
                      titleTextStyle:
                          TextStyle(fontSize: 14, fontFamily: 'IransansDn'),
                      descTextStyle:
                          TextStyle(fontFamily: 'IransansDn', fontSize: 11),
                      context: context,
                      dialogType: DialogType.INFO,
                      animType: AnimType.BOTTOMSLIDE,
                      title: 'آیا از پاسخ گویی پشتیبان رضایت داشتید؟',
                      desc: 'با تشکر از نظر شما',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                      body: Column(
                        children: [
                          Text(
                            'میزان رضایت خود از پاسخ دهی پشتیبان را اعلام فرمایید',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'IransansDn'),
                          ),
                          Text(
                            'با تشکر از مشارکت شما',
                            style: TextStyle(
                                fontFamily: 'IransansDn',
                                fontSize: 10,
                                color: Colors.black45),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0.01),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ],
                      ),
                      btnOkText: 'ثبت',
                      buttonsTextStyle: TextStyle(fontFamily: 'IransansDn'),
                      btnCancelText: 'انصراف',
                      customHeader: Image.asset('assets/icons/user.png'),
                    )..show();
                  },
                  child: Text(
                    'امتیاز به پشتیبان',
                    style: TextStyle(fontFamily: 'IransansDn'),
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
