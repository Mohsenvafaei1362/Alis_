import 'package:alis/screens/complaints/questions/questions.dart';

import 'package:flutter/material.dart';
import 'package:alis/screens/product/components/body.dart';

import 'complaint_form.dart';

class Complaint extends StatelessWidget {
  const Complaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Directionality(
                            textDirection: TextDirection.rtl,
                            child: Body(),
                          ),
                        ),
                      );
                    },
                    child: Icon(Icons.arrow_back_rounded),
                  ),
                  SizedBox(width: 5),
                  Text('فرم شکایت مشتری'),
                ]),
              ),
              Divider(),
              Container(
                width: double.infinity,
                height: 350,
                child: Image.asset(
                  'assets/images/Capture88.JPG',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'گزارش خطا',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'لطفا یکی از موارد زیر را انتخاب نمایید.',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: Complaint_Form(),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.forum_outlined),
                                Text('فرم ثبت شکایت'),
                                Icon(Icons.chevron_right_rounded),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: Questions(),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.question_mark_rounded),
                                Text('سوالات پرتکرار'),
                                Icon(Icons.chevron_right_rounded),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.crisis_alert_rounded),
                              Text('پیگیری شکایت'),
                              Icon(Icons.chevron_right_rounded),
                            ]),
                      ),
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
