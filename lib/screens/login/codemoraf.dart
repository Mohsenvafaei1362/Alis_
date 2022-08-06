import 'package:alis/screens/login/login_five.dart';
import 'package:alis/screens/login/login_one.dart';
import 'package:digit_to_persian_word/digit_to_persian_word.dart';
import 'package:flutter/material.dart';
import 'package:alis/screens/login/login_tree.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:otp_text_field/otp_text_field.dart';

import '../../controller/controller.dart';

class CodeMoraf extends StatelessWidget {
  const CodeMoraf({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    final PhoneController phoneController = Get.put(PhoneController());
    OtpFieldController otpController = OtpFieldController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // drawer: NavBar(),
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              // Container(
              //   height: size.height * 0.3,
              //   width: size.width,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(40),
              //       bottomRight: Radius.circular(40),
              //     ),
              //     image: DecorationImage(
              //       image: AssetImage('assets/images/35.jpg'),
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  InkWell(
                    onTap: () {
                      Get.to(
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: LoginOne(onChanged: onChanged),
                        ),
                      );
                    },
                    child: Icon(Icons.keyboard_arrow_right),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Container(
                  width: double.infinity,
                  // height: size.height,

                  color: Colors.white,

                  // decoration: BoxDecoration(

                  //   // borderRadius: BorderRadius.only(
                  //   //   topLeft: Radius.circular(40),
                  //   //   topRight: Radius.circular(40),
                  //   // ),
                  // ),
                  child: Padding(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   height: 200,
                        // ),
                        Text(
                          'کد معرف را وارد فرمایید',
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
                        OTPTextField(
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
                        SizedBox(
                          height: 100,
                        ),
                        // Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              minimumSize:
                                  Size(size.width * 0.9, size.height * 0.06),
                              primary: Colors.blueAccent,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: LoginFive(),

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
