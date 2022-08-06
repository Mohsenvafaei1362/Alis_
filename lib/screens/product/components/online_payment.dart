import 'package:alis/controller/controller.dart';
import 'package:alis/screens/product/components/detail_online.dart';
import 'package:alis/screens/product/components/online_payment2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'cart3.dart';

class OnlinePayment extends StatefulWidget {
  @override
  State<OnlinePayment> createState() => _OnlinePaymentState();
}

class _OnlinePaymentState extends State<OnlinePayment> {
  // const OnlinePayment({Key? key}) : super(key: key);
  bool _value = false;
  bool _valu = false;
  final List<String> items = [
    'خودم',
    'همکار1',
    'همکار2',
    'همکار3',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final CartController cartController = Get.put(CartController());
    String? val;
    bool isChecked = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.98,
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      // height: size.height * 0.06,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black12, width: 1),
                        ),
                      ),
                      // color: Colors.red,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.keyboard_arrow_right_outlined),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('پرداخت'),
                          Spacer(),
                          Text(' ویزیتور : '),
                          Text('آقای قدریان '),
                        ],
                      ),
                    ),

                    Container(
                      width: size.width,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          // color: Colors.amber,
                          border: Border.all(
                        color: Colors.black12,
                      )),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.tags),
                          SizedBox(
                            width: 15,
                          ),
                          Text('کد تخفیف دارید ؟'),
                          Spacer(),
                          // Icon(CupertinoIcons.add),
                          TextButton(
                            onPressed: () {
                              Get.bottomSheet(
                                  Container(
                                    child: Wrap(
                                      children: [
                                        ListTile(
                                          // leading: Icon(Icons.wb_incandescent_outlined),
                                          title: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                      'کد تخفیف خود را وارد کنید'),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: TextField(
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    labelText: 'کد تخفیف',
                                                    hintText:
                                                        'کد تخفیف خود را وارد کنید',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: ListTile(
                                            title: Container(
                                              color: Colors.blue,
                                              padding: EdgeInsets.all(10),
                                              width: size.width,
                                              child: Center(
                                                child: Text('ثبت'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  backgroundColor: Colors.white);
                            },
                            child: Icon(CupertinoIcons.add),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(20),
                          ), //BoxDecoration

                          /** CheckboxListTile Widget **/
                          child: CheckboxListTile(
                            title: Row(
                              children: [
                                const Text('مبلغ از اعتبار کسر شود'),
                                Spacer(),
                                Text(
                                  'اعتبار شما : 445000 ریال'.toPersianDigit(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            // subtitle: const Text(
                            //     'A computer science portal for geeks.'),
                            // secondary: const Icon(Icons.code),
                            autofocus: false,
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            selected: _value,
                            value: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            },
                          ), //CheckboxListTile
                        ), //Container
                      ), //Padding
                    ), //SizedBox
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(20),
                          ), //BoxDecoration

                          /** CheckboxListTile Widget **/
                          child: CheckboxListTile(
                            title: Row(
                              children: [
                                const Text("پرداخت از حساب"),
                                Spacer(),
                                Text(
                                  'موجودی 5000ریال',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            // subtitle: const Text(
                            //     'A computer science portal for geeks.'),
                            // secondary: const Icon(Icons.code),
                            autofocus: false,
                            activeColor: Colors.green,
                            checkColor: Colors.white,
                            selected: _valu,
                            value: _valu,
                            onChanged: (value) {
                              setState(() {
                                _valu = value!;
                              });
                            },
                          ), //CheckboxListTile
                        ), //Container
                      ), //Padding
                    ), //SizedBox
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('مبلغ کل'),
                              Text('${cartController.total}'.toPersianDigit()),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('تخفیف'),
                              Text(
                                '30000 ریال',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            endIndent: size.width * 0.06,
                            indent: size.width * 0.06,
                            color: Colors.lightBlue,
                            height: 1,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('قابل پرداخت'),
                              Text(
                                '670000 ریال',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                            decoration: BoxDecoration(
                              // color: Colors.amber,
                              border: Border(
                                top: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  'انتخاب تحویل گیرنده',
                                ),
                                DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                    hint: Text(
                                      'انتخاب تحویل گیرنده',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context).hintColor,
                                      ),
                                    ),
                                    items: items
                                        .map((item) => DropdownMenuItem<String>(
                                              value: item,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    item,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ))
                                        .toList(),
                                    value: selectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedValue = value as String;
                                      });
                                    },
                                    buttonHeight: 40,
                                    buttonWidth: 140,
                                    itemHeight: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Online_Payment2(),
                                ),
                              );
                            },
                            child: Pardakht(
                              size: size,
                              text1: 'پرداخت در محل',
                              image: 'assets/images/smartphone.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: DetailOnline(),
                                  ),
                                ),
                              );
                            },
                            child: Pardakht(
                              size: size,
                              text1: 'پرداخت اینترنتی',
                              image: 'assets/images/smartphone.png',
                            ),
                          ),
                        ],
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
