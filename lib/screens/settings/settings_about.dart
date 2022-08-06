import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class Settings_About extends StatelessWidget {
  const Settings_About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                    Text('درباره ما'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(
                  'assets/images/Capture2.PNG',
                  width: size.width,
                  height: size.height * 0.1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text(
                        'گروه تولیدی عالیس یکی از بزرگترین تولیدکنندگان انواع نوشیدنی در کشور است. این گروه سال‌ها پیش با هدف تولید فرآورده‌های لبنی پاستوریزه، در زمینی به وسعت ۱۰ هکتار واقع در شهرک صنعتی چناران آغاز به کار کرد و فعالیت خود را در جهت تحقق اهداف و سیاست‌های معین خود ادامه داد.'),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        'عالیس از همان ابتدا کیفیت جهانی و کسب رضایت مشتری را سرلوحه ی کار خود قرار داد و در این راستا با پیاده‌سازی سیستم‌های مدیریت کیفیت ISO 18001:2007 – ISO 14001:2004 – HACCP – ISO 22000:2005 – ISO 9001:2008 به منظور ارتقای سطح کیفی و سلامت محصولات تولیدی پیشگیری از آلودگی های زیست‌محیطی و افزایش سطح سلامت مصرف‌کنندگان راه خود را پیش گرفت.'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    'ارتباط با ما و اخبار',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                    'آدرس : مشهد، بلوار احمد آباد، خیابان طالقانی، نبش طالقانی ۳، ساختمان عالیس'),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text('تلفن : 0513187'),
              ),
              Column(
                children: [
                  Get_App(
                    image: 'assets/images/android.png',
                    text1: 'دانلود نسخه',
                    text2: 'Android',
                  ),
                  Get_App(
                    image: 'assets/icons/apple.png',
                    text1: 'دانلود نسخه',
                    text2: 'ios',
                  ),
                  // Get_App(
                  //   image: 'assets/images/android.png',
                  //   text1: 'دانلود نسخه',
                  //   text2: 'Android',
                  // ),
                  // Get_App(
                  //   image: 'assets/images/android.png',
                  //   text1: 'دانلود نسخه',
                  //   text2: 'Android',
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

class Get_App extends StatelessWidget {
  const Get_App({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);
  final String image, text1, text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 160,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: 24,
                height: 24,
              ),
              SizedBox(width: 5),
              Text(
                text1,
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
              Spacer(),
              Text(
                text2,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
