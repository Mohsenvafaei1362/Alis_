import 'package:alis/controller/controller.dart';
import 'package:alis/screens/login/login_five.dart';
import 'package:alis/screens/login/login_seven.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFour_1 extends StatelessWidget {
  const LoginFour_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final PreviewData previewData = Get.put(PreviewData());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.06,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginSeven(),
              ),
            );
          },
          label: Text(
            'مرحله بعد',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage('assets/images/65.jpg'), fit: BoxFit.fill),
                ),
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.25,
                  child: Image.asset(
                    'assets/images/64.png',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                textBox(
                  size: size,
                  previewData: previewData,
                  text1: '${previewData.name}',
                  text2: ' نام و نام خانوادگی   ',
                ),
                textBox(
                    size: size,
                    previewData: previewData,
                    text1: '${previewData.code}',
                    text2: '  کد ملی  '),
                textBox(
                    size: size,
                    previewData: previewData,
                    text1: '${previewData.email}',
                    text2: ' ایمیل'),
                textBox(
                    size: size,
                    previewData: previewData,
                    text1: '${previewData.ostan}',
                    text2: ' استان'),
                textBox(
                    size: size,
                    previewData: previewData,
                    text1: '${previewData.city}',
                    text2: ' شهر '),
                textBox(
                    size: size,
                    previewData: previewData,
                    text1: '${previewData.codeposti}',
                    text2: ' کد پستی  '),
                textBox(
                    size: size,
                    previewData: previewData,
                    text1: '${previewData.phone}',
                    text2: ' تلفن  '),
                textBox(
                    size: size,
                    previewData: previewData,
                    text1:
                        '${previewData.nagsh} ${previewData.nagsh2} ${previewData.nagsh3}',
                    text2: ' نقش  '),
                textBox(
                    size: size,
                    previewData: previewData,
                    text1: '${previewData.moaref}',
                    text2: ' کد معرف  '),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class textBox extends StatelessWidget {
  const textBox({
    Key? key,
    required this.size,
    required this.previewData,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final Size size;
  final PreviewData previewData;
  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black26),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: [
            Container(
              width: size.width * 0.3,
              height: size.height * 0.05,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text2,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.666,
              height: size.height * 0.05,
              padding: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                // border: Border(
                //   right: BorderSide(
                //     color: Colors.black26,
                //     width: 1,
                //   ),
                // color: Colors.lightBlue[50],
              ),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    text1,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
