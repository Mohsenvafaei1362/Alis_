import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../product/components/body.dart';

class EndFollowUp extends StatelessWidget {
  const EndFollowUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.06,
        child: FloatingActionButton.extended(
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            Get.offAll(
              Directionality(
                textDirection: TextDirection.rtl,
                child: Body(),
              ),
            );
          },
          label: Text(
            'بزن بریم',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'IransansDn'),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width,
                height: size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage('assets/images/879.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //         child: Column(
              //       children: [
              //         Text('تبریک!'),
              //         Text(
              //             'ثبت نام شما با موفقیت انجام گردید و به خانواده عالیس خوش آمدید'),
              //       ],
              //     )),
              //   ],
              // ),
              Container(
                width: size.width,
                height: size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/images/5225.jpg'),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('!تبریک'),
                    Text('ثبت نام شما با موفقیت به اتمام رسید'),
                    Text('به خانواده بزرگ عالیس خوش آمدید')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
