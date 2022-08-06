import 'package:alis/controller/controller.dart';
import 'package:alis/screens/login/login_serial1.dart';
import 'package:digit_to_persian_word/digit_to_persian_word.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class LoginOne extends StatelessWidget {
  const LoginOne({Key? key, required this.onChanged}) : super(key: key);
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController _controller = TextEditingController();
    final PhoneController phoneController = Get.put(PhoneController());
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // drawer: NavBar(),
        backgroundColor: Colors.white,
        // appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Capture3.PNG',
                        width: size.width / 2,
                      ),
                      Text(
                        'مرکز فروشندگان عالیس',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      ),
                      Container(
                        width: double.infinity,

                        // height: size.height,

                        // color: Color(0xfffcf8e8),
                        color: Colors.white,

                        // borderRadius: BorderRadius.only(
                        //   topLeft: Radius.circular(40),
                        //   topRight: Radius.circular(40),
                        // ),

                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 0, 32, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              // Text(
                              //   'لطفا شماره موبایل یا کد مشتری را وارد فرمایید'
                              //       .toPersianDigit(),
                              //   style: TextStyle(
                              //     fontSize: 14,
                              //     color: Colors.black45,
                              //   ),
                              // ),
                              SizedBox(
                                height: 15,
                              ),
                              Form(
                                key: phoneController.loginFormKey,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      inputFormatters: [],
                                      style: TextStyle(
                                        fontFamily: 'IransansDn',
                                      ),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        labelText: "کد مشتری/تلفن همراه",
                                        prefixIcon: Icon(Icons.mobile_friendly),
                                      ),
                                      // keyboardType: TextInputType.number,
                                      controller:
                                          phoneController.phoneController,
                                      onSaved: (value) {
                                        phoneController.phone.value =
                                            value!.toPersianDigit();
                                      },
                                      validator: (value) {
                                        return phoneController
                                            .validatePhone(value!);
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                              // Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: Colors.white,
                                        minimumSize: Size(size.width * 0.72,
                                            size.height * 0.06),
                                        primary: Colors.blueAccent,
                                      ),
                                      onPressed: () {
                                        phoneController.phone.value =
                                            phoneController
                                                .phoneController.text;
                                        phoneController.checkLogin();
                                        // Get.to(
                                        //   LoginTow(onChanged: onChanged),
                                        // );
                                      },
                                      child: Text(
                                        'ادامه',
                                        style:
                                            TextStyle(fontFamily: 'IransansDn'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: size.height * 0.06,
                                      width: size.width * 0.1,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 1,
                                            blurRadius: 20,
                                            offset: Offset(0,
                                                7), // changes position of shadow
                                          ),
                                        ],
                                        color: Colors.blueAccent,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.fingerprint),
                                          iconSize: 22,
                                          color: Color(0xfffffde7),
                                        ),
                                      ),
                                    ),
                                  ],
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
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'هنوز ثبت نام نکرده اید؟',
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'همین حالا ثبت نام کنید',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'سریال دستگاه : ',
                    style: TextStyle(color: Colors.black45, fontSize: 10),
                  ),
                  Text(
                    'RZ8M72YJ7K3',
                    style: TextStyle(color: Colors.black45, fontSize: 10),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Login_Serial1(
                            onChanged: (value) {},
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'اعلام به مرکز پیام',
                      style: TextStyle(color: Colors.blue, fontSize: 10),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
