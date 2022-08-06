import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class Settings_Colleague extends StatelessWidget {
  const Settings_Colleague({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    Text('همکاران من'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'همکارانی که توسط شما معرفی شدند:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/user.png',
                        width: 48,
                        height: 48,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('فروشگاه وفایی'),
                          Text(
                            'آنلاین',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 90,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Text(
                          'دریافت پاداش',
                          style: TextStyle(color: Colors.green),
                        )),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
