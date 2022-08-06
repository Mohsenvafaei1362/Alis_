import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elegant_notification/elegant_notification.dart';
import 'package:elegant_notification/resources/arrays.dart';

class Comment_Product extends StatefulWidget {
  bool isChecked = false;

  @override
  State<Comment_Product> createState() => _Comment_ProductState();
}

class _Comment_ProductState extends State<Comment_Product> {
  // const comment32({Key? key}) : super(key: key);
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color.fromARGB(255, 255, 197, 110),
        //   toolbarHeight: 20,
        // ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    ElegantNotification.success(
                      description:
                          Text('به صفحه نظر سنجی هلدینگ عالیس خوش آمدید'),
                      notificationPosition: NotificationPosition.top,
                      dismissible: true,
                      animationDuration: Duration(microseconds: 5000),
                    ).show(context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 52,
                    color: Color.fromARGB(255, 157, 211, 255),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'به صفحه نظر سنجی هلدینگ عالیس خوش آمدید ',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 3, 7, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 105,
                          ),
                          Text(
                            'نظر سنجی',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Text('دیدگاه خود را شرح دهید'),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 11, 7, 0),
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'عنوان نظر',
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: TextField(
                          obscureText: false,
                          textDirection: TextDirection.rtl,
                          decoration:  InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.grey.shade300,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 11, 7, 0),
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Text('نقاط قوت'),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: TextField(
                          obscureText: false,
                          textDirection: TextDirection.rtl,
                         decoration:  InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.grey.shade300,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 11, 7, 0),
                      child: SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Text('نقاط ضعف'),
                      )),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: TextField(
                              obscureText: false,
                              textDirection: TextDirection.rtl,
                             decoration:  InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.grey.shade300,
                            filled: true,
                          ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(4, 11, 7, 0),
                        child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('متن نظر'),
                                Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child:
                                      Icon(CupertinoIcons.star_fill, size: 6),
                                ),
                              ],
                            ))),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: TextField(
                          textAlign: TextAlign.right,
                          keyboardType: TextInputType.multiline,
                          maxLines: 4,
                          decoration:  InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.grey.shade300,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                      ),
                      Text(' ارسال دیدگاه به صورت ناشناس  '),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(7, 0, 8, 0),
                          child: ClipRRect(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 50,
                                      child: TextButton(
                                        autofocus: false,
                                        onPressed: () {},
                                        child: Text(
                                          'ثبت دیدگاه ها',
                                          style: TextStyle(
                                              color: Colors.grey.shade600),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 33),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 11, 7, 0),
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                            text:
                                                "ثبت دیدگاه به معنی موافقت با "),
                                        TextSpan(
                                          text: "قوانین هلدینگ عالیس",
                                          style: TextStyle(
                                            color: Color(0xff00Acc1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(text: " "),
                                        TextSpan(text: "است"),
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
