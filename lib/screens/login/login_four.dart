// import 'package:alis/screens/settings/settings.dart';
import 'dart:ui';

import 'package:alis/screens/login/login_five.dart';
import 'package:alis/screens/login/login_four_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../controller/controller.dart';
import 'codemoraf.dart';
// import 'package:persian_number_utility/persian_number_utility.dart';

class LoginFour extends StatefulWidget {
  const LoginFour({Key? key}) : super(key: key);

  @override
  State<LoginFour> createState() => _LoginFourState();
}

class _LoginFourState extends State<LoginFour> {
  bool _value = false;
  bool _value2 = false;
  bool _value3 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final TextEditingController controlname = TextEditingController();
    final TextEditingController controlcode = TextEditingController();
    final TextEditingController controlemail = TextEditingController();
    final TextEditingController controlostan = TextEditingController();
    final TextEditingController controlcity = TextEditingController();
    final TextEditingController controlcodeposti = TextEditingController();
    final TextEditingController controlphone = TextEditingController();
    final TextEditingController controlmoaref = TextEditingController();
    final TextEditingController controlnagsh = TextEditingController();
    final PreviewData previewData = Get.put(PreviewData());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'توجه:',
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('پر کردن تمامی موارد الزامیست'),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('درخواست چه نقش هایی در خانواده عالیس را دارید؟'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(20),
                  ), //BoxDecoration

                  /** CheckboxListTile Widget **/
                  child: CheckboxListTile(
                    title: const Text('فروشنده'),
                    subtitle: const Text(
                      'به زودی توضیحات اضافه میشود',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    secondary: const Icon(Icons.supervisor_account_rounded),
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
                  ), //CheckboxListTile
                ), //Container
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(20),
                  ), //BoxDecoration

                  /** CheckboxListTile Widget **/
                  child: CheckboxListTile(
                    title: const Text('ویزیتور'),
                    subtitle: const Text(
                      'به زودی توضیحات اضافه میشود',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    secondary: const Icon(Icons.supervisor_account_rounded),
                    autofocus: false,
                    activeColor: Colors.blue,
                    checkColor: Colors.white,
                    selected: _value2,
                    value: _value2,
                    onChanged: (value) {
                      setState(
                        () {
                          _value2 = value!;
                        },
                      );
                    },
                  ), //CheckboxListTile
                ), //Container
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(20),
                  ), //BoxDecoration

                  /** CheckboxListTile Widget **/
                  child: CheckboxListTile(
                    title: const Text('موزع'),
                    subtitle: const Text(
                      'به زودی توضیحات اضافه میشود',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    secondary: const Icon(Icons.supervisor_account_rounded),
                    autofocus: false,
                    activeColor: Colors.blue,
                    checkColor: Colors.white,
                    selected: _value3,
                    value: _value3,
                    onChanged: (value) {
                      setState(
                        () {
                          _value3 = value!;
                        },
                      );
                    },
                  ), //CheckboxListTile
                ), //Container
              ),
              // Padding(
              //   padding: const EdgeInsets.all(24),
              //   child: Row(
              //     children: [
              //       Text('کد معرف :'),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Container(
              //         width: size.width / 3,
              //         height: 30,
              //         decoration: BoxDecoration(
              //           // color: Colors.blue,
              //           borderRadius: BorderRadius.circular(5),
              //         ),
              //         child: TextField(
              //           controller: controlmoaref,
              //           style: TextStyle(
              //               fontFamily: 'IransansDn',
              //               fontSize: 10,
              //               color: Colors.blue),
              //           obscureText: false,
              //           decoration: InputDecoration(
              //             border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(5)),
              //             // labelText: 'کد ملی',

              //             //
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'اطلاعات شخصی',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controlname,
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.black45),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),

                          labelText: 'نام و نام خانوادگی',
                          //
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controlcode,
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.black45),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'کد ملی',
                          //
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controlemail,
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.black45),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'ایمیل',

                          //
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'اطلاعات تماس',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controlostan,
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.black45),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'استان',

                          //
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controlcity,
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.black45),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'شهر',

                          //
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controlcodeposti,
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.black45),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),

                          labelText: 'کد پستی',

                          //
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: controlphone,
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.black45),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'تلفن تماس',

                          //
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width * 0.9,
                height: size.height * 0.06,
                child: ElevatedButton(
                  onPressed: () {
                    previewData.name.value = controlname.text;
                    previewData.code.value = controlcode.text;
                    previewData.email.value = controlemail.text;
                    previewData.ostan.value = controlostan.text;
                    previewData.city.value = controlcity.text;
                    previewData.codeposti.value = controlcodeposti.text;
                    previewData.phone.value = controlphone.text;
                    previewData.moaref.value = controlmoaref.text;
                    _value ? previewData.nagsh.value = 'فروشنده' : null;
                    _value2 ? previewData.nagsh2.value = 'ویزیتور' : null;
                    _value3 ? previewData.nagsh3.value = 'موزع' : null;
                    // if(_value == true){
                    //   previewData.nagsh.value == 'فروشنده';
                    // }
                    // if(_value2 == true){
                    //   previewData.nagsh.value == 'ویزیتور';
                    // }
                    // if(_value3 == true){
                    //   previewData.nagsh.value == 'موزع';
                    // }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CodeMoraf(
                          onChanged: (value) {},
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'ادامه',
                    style: TextStyle(fontFamily: 'IransansDn'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
