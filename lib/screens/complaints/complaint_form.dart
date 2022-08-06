import 'package:flutter/material.dart';
import 'package:alis/screens/complaints/complaint.dart';

class Complaint_Form extends StatelessWidget {
  const Complaint_Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: Complaint(),
                              ),
                            ),
                          );
                        },
                        child: Icon(Icons.arrow_back_rounded)),
                    SizedBox(width: 10),
                    Text('فرم ثبت شکایت مشتری'),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'تماس با عالیس',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 0,
                      endIndent: 350,
                      color: Colors.red,
                    ),
                    SizedBox(height: 25),
                    Text(
                      'لطفا پیش از ارسال ایمیل یا تماس تلفنی، ابتدا پرسش های متداول را مشاهده کنید.',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.chevron_right_rounded),
                        border: OutlineInputBorder(),
                        labelText: 'موضوع',
                        suffixIcon: Icon(
                          Icons.star_rate_rounded,
                          size: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'نام و نام خانوادگی',
                        suffixIcon: Icon(
                          Icons.star_rate_rounded,
                          size: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ایمیل',
                        suffixIcon: Icon(
                          Icons.star_rate_rounded,
                          size: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'تلفن تماس',
                        suffixIcon: Icon(
                          Icons.star_rate_rounded,
                          size: 10,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'شماره سفارش',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'توضیحات',
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(32),
                              child: Text(
                                'حداکثر 5 تصویر jpeg یا PNG حداکثر یک مگابایت، یک ویدیو MP4 حداکثر 50 مگابایت',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black45),
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              width: size.width / 2.5,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.cloud_upload),
                                    Text('افزودن عکس یا ویدیو'),
                                  ]),
                            )
                          ]),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('ثبت و ارسال'),
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
