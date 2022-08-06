import 'package:alis/models/operation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../controller/controller.dart';

class DetaileOperation extends StatelessWidget {
  const DetaileOperation({Key? key, required this.operation}) : super(key: key);
  final Operation_Api operation;

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
                height: size.height * 0.89,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      // height: size.height * 0.06,
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border(
                        //   bottom: BorderSide(
                        //     color: Colors.black12,
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
                              color: Colors.blue,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Align(
                              child: Icon(
                                CupertinoIcons.question_circle,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: size.width,
                      height: size.height * 0.35,
                      decoration: BoxDecoration(
                        // border: Border(
                        //   bottom: BorderSide(color: Colors.black12, width: 1),
                        // ),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            operation.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'سه شنبه ، 28 تیر 1401 ، 18:30'.toPersianDigit(),
                            style: TextStyle(color: Colors.black45),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Container(
                            // margin: EdgeInsets.fromLTRB(10, 50, 30, 20),
                            width: size.width * 0.12,
                            height: size.height * 0.052,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: operation.icon,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            operation.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text('${operation.id}'),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Text(
                            '${operation.price} ریال'.toPersianDigit(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'موجودی پس از تراکنش  6452000 ریال'.toPersianDigit(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
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
