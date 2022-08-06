import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../models/products.dart';

class Buy3 extends StatelessWidget {
  const Buy3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final product = Product.products;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.06,
                padding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('جزئیات سفارش'),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(CupertinoIcons.arrow_right),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.78,
                padding: EdgeInsets.all(20),
                child: ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    final data = product[index];
                    return Container(
                      width: size.width,
                      // height: size.height * 0.1,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black12,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: size.width * 0.1,
                              height: size.height * 0.03,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                  child: Text(
                                'لغو',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                            ),
                            Spacer(),
                            Container(
                              width: size.width * 0.5,
                              // color: Colors.blue,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(data.title),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('${data.price}'.toPersianDigit()),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('  تعداد  2'.toPersianDigit())
                                  // SizedBox(
                                  //   height: 10,
                                  // ),
                                  // Text(
                                  //   '1401/04/22'.toPersianDigit(),
                                  //   style: TextStyle(
                                  //       color: Colors.black45, fontSize: 10),
                                  // ),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.2,
                              // color: Colors.blue,
                              child: Image.asset(
                                data.image,
                                width: 100,
                                height: 100,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.06,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('جمع کل  ${582000} ریال'.toPersianDigit()),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.06,
                padding: EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width * 0.25,
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        'لغو',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                    Container(
                      width: size.width * 0.25,
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        'پرداخت',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
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
