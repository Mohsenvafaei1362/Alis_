import 'package:flutter/material.dart';
import 'package:alis/screens/login/login_four.dart';

class LoginTree extends StatefulWidget {
  const LoginTree({Key? key}) : super(key: key);

  @override
  State<LoginTree> createState() => _LoginTreeState();
}

class _LoginTreeState extends State<LoginTree> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool value = false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    'قوانین هلدینگ عالیس',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(32),
              width: size.width * 0.8,
              height: size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
                color: Colors.white,
              ),
              child: Text(
                'توجه داشته باشید کلیه اصول و رویه‏‌های عالیس منطبق با قوانین جمهوری اسلامی ایران، قانون تجارت الکترونیک و قانون حمایت از حقوق مصرف کننده است و متعاقبا کاربر نیز موظف به رعایت قوانین مرتبط با کاربر است. در صورتی که در قوانین مندرج، رویه‏‌ها و سرویس‏‌های عالیس تغییراتی در آینده ایجاد شود، در همین صفحه منتشر و به روز رسانی می شود و شما توافق می‏‌کنید که استفاده مستمر شما از اپلیکیشن به معنی پذیرش هرگونه تغییر است.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black87,
                  height: 2.5,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'شرایط و قوانین برنامه ',
                    style: TextStyle(fontSize: 17.0),
                  ), //Text
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Directionality(
                            textDirection: TextDirection.rtl,
                            child: LoginFour(),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: size.width * 0.3,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'قبول میکنم  >',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
