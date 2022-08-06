import 'package:alis/screens/complaints/complaint_form.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:alis/screens/support/support.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Unsuccessful extends StatelessWidget {
  const Unsuccessful({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/1234.jpg',
                width: size.width,
                height: 350,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'پرداخت شما ناموفق بود',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.red),
              ),
              Text(
                'در صورت کسر هزینه، طی 72 ساعت وجه برگشت داده خواهد شد'
                    .toPersianDigit(),
                style: TextStyle(fontSize: 10, color: Colors.black45),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width / 1.5,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Body(),
                          ),
                        );
                      },
                      child: Text(
                        'برگشت به صفحه اصلی',
                        style:
                            TextStyle(fontFamily: 'IransansDn', fontSize: 13),
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
                        Get.to(
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Support(),
                          ),
                        );
                      },
                      child: Text(
                        'مرکز پشتیبانی',
                        style:
                            TextStyle(fontFamily: 'IransansDn', fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
