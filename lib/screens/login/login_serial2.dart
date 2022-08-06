import 'package:alis/screens/login/login_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Login_Serial2 extends StatelessWidget {
  const Login_Serial2({Key? key}) : super(key: key);

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
                'assets/images/77787.jpg',
                width: size.width,
                height: 350,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'درخواست شما با موفقیت ارسال شد',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.green),
              ),
              Text(
                'شماره سریال دستگاه در صفحه ورود قابل مشاهده است'
                    .toPersianDigit(),
                style: TextStyle(fontSize: 10, color: Colors.black45),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'شماره درخواست',
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '6327641856'.toPersianDigit(),
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: size.width * 0.9,
                height: size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: LoginOne(
                          onChanged: (value) {},
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'برگشت به صفحه ورود',
                    style: TextStyle(fontFamily: 'IransansDn', fontSize: 13),
                  ),
                ),
              ),
              // Row(
              //   children: [
              //     SizedBox(
              //       width: size.width * 0.09,
              //       height: size.height * 0.06,
              //       child: ElevatedButton(
              //         onPressed: () {
              //           Get.to(
              //             Directionality(
              //               textDirection: TextDirection.rtl,
              //               child: LoginOne(
              //                 onChanged: (value) {},
              //               ),
              //             ),
              //           );
              //         },
              //         child: Text(
              //           'برگشت به صفحه ورود',
              //           style:
              //               TextStyle(fontFamily: 'IransansDn', fontSize: 13),
              //         ),
              //       ),
              //     ),
              //     // Spacer(),
              //     // SizedBox(
              //     //   width: size.width / 3.2,
              //     //   height: 50,
              //     //   child: ElevatedButton(
              //     //     style: ButtonStyle(
              //     //       backgroundColor: MaterialStateProperty.all(Colors.red),
              //     //     ),
              //     //     onPressed: () {
              //     //       Get.to(
              //     //         Directionality(
              //     //           textDirection: TextDirection.rtl,
              //     //           child: Support(),
              //     //         ),
              //     //       );
              //     //     },
              //     //     child: Text(
              //     //       'مرکز پشتیبانی',
              //     //       style:
              //     //           TextStyle(fontFamily: 'IransansDn', fontSize: 13),
              //     //     ),
              //     //   ),
              //     // ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
