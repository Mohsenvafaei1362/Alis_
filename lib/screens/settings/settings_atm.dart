import 'package:alis/models/data_atm.dart';
import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Settings_ATM extends StatelessWidget {
  const Settings_ATM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Product8 = AllProducts8.products8;

    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      body: HawkFabMenu(
        icon: AnimatedIcons.add_event,
        fabColor: Colors.blue,
        iconColor: Colors.white,
        items: [
          HawkFabMenuItem(
            label: 'مشاهده تمامی تراکنش ها',
            ontap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('مجدد امتحان فرمایید'),
                ),
              );
            },
            icon: const Icon(Icons.remove_red_eye),
            labelColor: Colors.white,
            labelBackgroundColor: Colors.blue,
          ),
          HawkFabMenuItem(
            label: 'ایجاد حساب جدید',
            ontap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('هنوز شکایتی ثبت نشده است')),
              );
            },
            icon: const Icon(Icons.add),
            color: Colors.red,
            labelColor: Colors.blue,
          ),
          HawkFabMenuItem(
            label: 'ویرایش حساب',
            ontap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('هنوز با پشتیبان ارتباط برقرار نشده')),
              );
            },
            icon: const Icon(Icons.edit),
          ),
        ],
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
                      Text('حساب بانکی'),
                      Icon(Icons.question_mark_rounded),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: size.width,
                    height: size.height * 0.25,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/images/ATM.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 40, 0),
                          child: Row(
                            children: [
                              Text(
                                'بانک سامان',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('1234',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                '5678',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '9012',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '3456',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 40, 0),
                          child: Row(
                            children: [
                              Text('شماره شبا : ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11)),
                              Text('7894561233216549877894563',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11)),
                              Text('IR',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                          child: Row(
                            children: [
                              Text(
                                'موجودی حساب : ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                '153,275,564',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Spacer(),
                              Text('فرهاد رضوانی',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: Product8.length,
                    itemBuilder: (context, index) {
                      final data = Product8[index];
                      return Container(
                        width: size.width,
                        height: 110,
                        decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black12)),
                          // boxShadow: [
                          // BoxShadow(
                          //   color: Colors.grey.withOpacity(0.5),
                          //   spreadRadius: 2,
                          //   blurRadius: 3,

                          //   offset:
                          //       Offset(0, 3), // changes position of shadow
                          // ),
                          // ],
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    data.title.toPersianDigit(),
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                  Text(data.title2.toPersianDigit(),
                                      style: TextStyle(color: Colors.black45)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/receipt.png',
                                    width: 36,
                                    height: 36,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.title3,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        data.title4,
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(children: [
                                    Text(
                                      '${data.price}'.toPersianDigit(),
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    Image.asset(
                                      'assets/icons/tom.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      );
                    },
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
