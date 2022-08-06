import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class Settings_pass extends StatelessWidget {
  const Settings_pass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.06,
        child: FloatingActionButton(
          onPressed: () {},
          child: Text(
            'تایید و ذخیره',
            style: TextStyle(fontFamily: 'IransansDn', fontSize: 12),
          ),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: Settings(),
                            ),
                          ),
                        );
                      },
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                    Text('تغییر رمز عبور'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text('رمز عبور فعلی و جدید خود را وارد کنید'),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextField(
                      style: TextStyle(
                        fontFamily: 'IransansDn',
                        fontSize: 12,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        // prefixIcon: Icon(Icons.chevron_right_rounded),
                        border: OutlineInputBorder(),
                        labelText: 'رمز عبور فعلی',
                        // suffixIcon:
                        //  Icon(
                        // Icons.star_rate_rounded,
                        // size: 10,
                        // color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextField(
                      style: TextStyle(
                        fontFamily: 'IransansDn',
                        fontSize: 12,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        // prefixIcon: Icon(Icons.chevron_right_rounded),
                        border: OutlineInputBorder(),
                        labelText: 'رمز عبور جدید',
                        // suffixIcon:
                        //  Icon(
                        // Icons.star_rate_rounded,
                        // size: 10,
                        // color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextField(
                      style: TextStyle(
                        fontFamily: 'IransansDn',
                        fontSize: 12,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        // prefixIcon: Icon(Icons.chevron_right_rounded),
                        border: OutlineInputBorder(),
                        labelText: 'تکرار رمز عبور جدید',
                        // suffixIcon:
                        //  Icon(
                        // Icons.star_rate_rounded,

                        // size: 10,
                        // color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(children: [
                      Icon(
                        Icons.task_alt_outlined,
                        size: 18,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'شامل حروف کوچک و بزرگ انگلیسی',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ]),
                    Row(children: [
                      Icon(
                        Icons.task_alt_outlined,
                        size: 18,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'شامل حداقل 8 کاراکتر',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ]),
                    Row(
                      children: [
                        Icon(
                          Icons.task_alt_outlined,
                          size: 18,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'شامل عدد',
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
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
