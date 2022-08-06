import 'dart:ui';

import 'package:alis/controller/controller.dart';
import 'package:alis/screens/login/login_serial2.dart';
import 'package:alis/screens/login/login_tree.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:alis/screens/settings/settings_about.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Login_Serial1 extends StatefulWidget {
  const Login_Serial1({Key? key, required this.onChanged}) : super(key: key);
  final ValueChanged onChanged;

  @override
  State<Login_Serial1> createState() => _Login_Serial1State();
}

class _Login_Serial1State extends State<Login_Serial1> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    final PhoneController phoneController = Get.put(PhoneController());
    OtpFieldController otpController = OtpFieldController();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                    // Text('درباره ما'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
                    child: Text('برند مورد نظر خود را انتخاب فرمایید:'),
                  ),
                ],
              ),
              CheckboxListTile(
                title: const Text(
                  'شرکت عالیس',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'IransansDn'),
                ),
                // subtitle: const Text(
                //   '',
                // style: TextStyle(
                //   fontSize: 10,
                //   color: Colors.blue,
                // ),
                // ),

                secondary: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/images/Capture3.PNG'),
                ),
                // const Icon(Icons.supervisor_account_rounded),
                autofocus: false,

                activeColor: Colors.blue,
                checkColor: Colors.white,
                selected: _value,
                value: _value,

                onChanged: (value) {
                  setState(
                    () {
                      _value = value!;
                    },
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('دریافت سریال:'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: IntlPhoneField(
                  style: TextStyle(fontFamily: 'IransansDn'),
                  decoration: InputDecoration(
                    hintText: 'بدون صفر وارد فرمایید',
                    labelText: 'شماره موبایل',
                    hintStyle: TextStyle(fontSize: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IR',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              Text(
                'ارسال کد تایید',
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 200,

                  // ),
                  Text(
                    'کد تایید را وارد فرمایید',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Text(
                  //   'کد تایید به شماره ${phoneController.phone.value} ارسال شد'
                  //       .toPersianDigit(),
                  //   style: TextStyle(color: Colors.black45),
                  // ),

                  SizedBox(
                    height: 20,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Text(
                  //       'ویرایش شماره',
                  //       style: TextStyle(
                  //         fontSize: 15,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     Icon(Icons.edit),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: OTPTextField(
                        keyboardType: TextInputType.text,
                        controller: otpController,
                        length: 5,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldWidth: 45,
                        // fieldStyle: Filesty.box,
                        outlineBorderRadius: 10,
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        onChanged: (pin) {
                          print("Changed: " + pin.toPersianDigit());
                        },
                        onCompleted: (pin) {
                          print("Completed: " + pin.toPersianDigit());
                        }),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        minimumSize: Size(size.width * 0.9, size.height * 0.06),
                        primary: Colors.blueAccent,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: Login_Serial2(),

                              // child:Login(onChanged: onChanged),
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'تایید',
                        style: TextStyle(fontFamily: 'IransansDn'),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       bottom: MediaQuery.of(context).viewInsets.bottom),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
