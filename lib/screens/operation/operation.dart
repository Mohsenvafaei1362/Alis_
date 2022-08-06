import 'package:alis/models/operation.dart';
import 'package:alis/screens/operation/detaileOperation.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../controller/controller.dart';

class Operation extends StatelessWidget {
  const Operation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final CartController cartController = Get.put(CartController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: size.width,
                // height: size.height * 0.06,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  // border: Border(
                  //   bottom: BorderSide(
                  //     color: Colors.lightBlueAccent,
                  //     width: 1,
                  //   ),
                  // ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'لیست تراکنش ها',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Align(
                        child: Icon(
                          CupertinoIcons.question_circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '750000 ریال'.toPersianDigit(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  'موجودی حساب',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '50000 ریال'.toPersianDigit(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                                Text(
                                  'اعتبار',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width * 0.7,
                              height: size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.add,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  Text(
                                    'افزایش موجودی',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Positioned(
                      bottom: 0,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        width: size.width,
                        height: size.height * 0.75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: ListView.builder(
                          itemCount: Operation_Api.operations.length,
                          itemBuilder: (context, index) {
                            final data = Operation_Api.operations[index];
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: DetaileOperation(
                                                    operation: Operation_Api
                                                        .operations[index]),
                                              )),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      // color: Colors.red,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // margin: EdgeInsets.fromLTRB(10, 50, 30, 20),
                                          width: size.width * 0.12,
                                          height: size.height * 0.052,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Center(
                                            child: data.icon,
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.05,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(data.title),
                                            Text(
                                              'سه شنبه ، 28 تیر 1401 ، 18:30'
                                                  .toPersianDigit(),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 1, horizontal: 10),
                                          decoration: BoxDecoration(
                                            color: data.color,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${data.price}'.toPersianDigit(),
                                              style: TextStyle(
                                                color:
                                                    data.color == Colors.green
                                                        ? Colors.white
                                                        : Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
