import 'package:flutter/material.dart';

class CommentSuggest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green.shade400,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.keyboard_arrow_right_rounded),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          'نظر سنجی',
                          style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 30),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: [
                      //       Image.asset('assets/images/images.jpg',
                      //           width: 100, height: 100),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.5,
                ),
                Padding(padding: const EdgeInsets.only(top: 20)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 15,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 14, left: 6),
                            child: Text(
                              'آیا امکانات سایت و اپلیکیشن ما را خوب ارزیابی می کنید',
                              style: TextStyle(
                                fontFamily: 'IransansDn',
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 12, left: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: 'لطفا سوال اول را پاسخ دهید',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, left: 6),
                          child: Text(
                            'از چه طریقی با سایت و اپلیکیشن عالیس آشنا شده اید',
                            style: TextStyle(
                              fontFamily: 'IransansDn',
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 12, left: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: 'لطفا سوال دوم را پاسخ دهید',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Text(
                            'کدام محصول عالیس بیشترین مصرف را در خانواده شما دارد',
                            style: TextStyle(
                              fontFamily: 'IransansDn',
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 12, left: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: 'لطفا سوال سوم را پاسخ دهید',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 14),
                          child: ClipRRect(
                            child: Text(
                              'اپلیکیشن و سایت عالیس را چگونه ارزیابی می کنید',
                              style: TextStyle(
                                fontFamily: 'IransansDn',
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, right: 12, left: 12),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: 'لطفا سوال چهارم را پاسخ دهید',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55, top: 14),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Text(
                            'با تشکر از پاسخگویی شما مشتری گرامی',
                            style: TextStyle(
                              shadows: [
                                Shadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 4,
                                  color: Color.fromARGB(255, 231, 40, 40),
                                )
                              ],
                              fontFamily: 'IransansDn',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
