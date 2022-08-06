import 'package:alis/screens/settings/settings_about.dart';
import 'package:flutter/material.dart';
import 'package:alis/screens/product/components/body.dart';
import '../followup/endFollowup.dart';
import '../followup/followUp.dart';

class LoginSeven extends StatelessWidget {
  const LoginSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  height: size.height / 2.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/2085.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'تبریک!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'اکنون شما به جمع خانواده عالیس پیوستید.',
                  style: TextStyle(color: Colors.black54),
                ),
                Text('از تجارت آنلاین لذت ببرید!',
                    style: TextStyle(color: Colors.black54)),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'پس از ورود به داشبورد پنل همکاران عالیس، با ورود به صفحه پروفایل شما می توانید نسخه آنلاین قرارداد خود را مشاهده کنید. لطفا توجه کنید که نیازی به چاپ و ارسال قرارداد نیست.',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EndFollowUp(),
                      ),
                    );
                  },
                  child: Container(
                    width: size.width * 0.9,
                    height: size.height * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'ورود به پنل همکاران',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Directionality(
                          textDirection: TextDirection.rtl,
                          child: Settings_About(),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'آشنایی با گروه عالیس',
                    style: TextStyle(color: Colors.blue, fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
