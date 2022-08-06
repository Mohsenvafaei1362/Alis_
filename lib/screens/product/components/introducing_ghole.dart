import 'package:alis/models/item_dashboard.dart';
import 'package:alis/screens/settings/settings.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Introducing_Ghole extends StatelessWidget {
  const Introducing_Ghole({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                    Text('معرفی قله ها'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Gholeha(
                size: size,
                text1: 'بستون',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله بیستون و سطح 1 نیاز به کسب حداقل 1,000 امتیاز است'
                          .toPersianDigit(),
                      'امکان اضافه کردن سه فروشگاه');
                },
              ),
              Gholeha(
                size: size,
                text1: 'رامند',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله رامند و سطح 2 نیاز به کسب حداقل 2,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
              Gholeha(
                size: size,
                text1: 'بینالود',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله بینالود و سطح 3 نیاز به کسب حداقل 5,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
              Gholeha(
                size: size,
                text1: 'الوند',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله الوند و سطح 4 نیاز به کسب حداقل 10,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
              Gholeha(
                size: size,
                text1: 'سهند',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله سهند و سطح 5 نیاز به کسب حداقل 20,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
              Gholeha(
                size: size,
                text1: 'تفتان',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله تفتان و سطح 6 نیاز به کسب حداقل 50,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
              Gholeha(
                size: size,
                text1: 'توچال',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله توچال و سطح 7 نیاز به کسب حداقل 100,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
              Gholeha(
                size: size,
                text1: 'دنا',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله دنا و سطح 8 نیاز به کسب حداقل 200,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
              Gholeha(
                size: size,
                text1: 'سبلان',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله سبلان و سطح 9 نیاز به کسب حداقل 500,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
              Gholeha(
                size: size,
                text1: 'دماوند',
                image: 'assets/images/gh1.jpg',
                press: () {
                  alert_ghole(
                      context,
                      size,
                      'برای صعود به قله دماوند و سطح 10 نیاز به کسب حداقل 1,000,000 امتیاز است'
                          .toPersianDigit(),
                      'خدمات این سطح شامل');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> alert_ghole(BuildContext context, Size size, text1, text2) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            title: Text(
              text1,
              textAlign: TextAlign.center,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/gh2.jpg',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'خدمات این سطح شامل:',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'امکان اضافه کردن دو فروشگاه',
                          style: TextStyle(color: Colors.green, fontSize: 10),
                        ),
                        Text(
                          'یک درصد تخفیف بر روی محصولات',
                          style: TextStyle(color: Colors.green, fontSize: 10),
                        ),
                        Text(
                          '50 امتیاز بابت ٍثبت نظر بر روی هر محصول',
                          style: TextStyle(color: Colors.green, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.04,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'متوجه شدم',
                    style: TextStyle(fontFamily: 'IransansDn'),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Gholeha extends StatelessWidget {
  const Gholeha({
    Key? key,
    required this.size,
    required this.text1,
    required this.image,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String text1, image;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        height: size.height * 0.15,
        decoration: BoxDecoration(
          // color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
            opacity: 0.95,
          ),
        ),
        child: InkWell(
          onTap: press,
          child: Container(
            width: size.width,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.5),
            ),
            child: Center(
              child: Text(
                text1,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
