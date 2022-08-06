import 'package:alis/models/products.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:persian_utils/persian_utils.dart';

import '../../../controller/controller.dart';
import '../../details/details_screen.dart';
import 'cartNew.dart';

class Festival extends StatelessWidget {
  const Festival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final CartController cartController = Get.put(CartController());
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.06,
                padding: EdgeInsets.fromLTRB(0, 5, 20, 5),
                // margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(CupertinoIcons.arrow_right),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'جشنواره تخفیفات عالیس',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Badge(
                        badgeContent: Obx(
                          () => Text(
                            '${cartController.products.length}'
                                .toPersianDigit(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: CartNew(),
                          ),
                        );
                      },
                      child: Align(
                        child: Icon(CupertinoIcons.cart),
                      ),
                    ),
                    SizedBox(width: 15)
                  ],
                ),
              ),
              Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                ),
                // height: size.height,
                child: Text(
                  'نوشابه های گازدار عالیس',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.79,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                  itemCount: Product.products.length,
                  itemBuilder: (context, index) {
                    if (Product.products[index].category == 'ab') {
                      final data = Product.products[index];
                      return Container(
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        width: size.width,
                        height: size.height * 0.1,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white70,
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          border: Border(
                            bottom: BorderSide(
                              //                   <--- left side
                              color: Colors.black26,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  '${data.image}',
                                  width: size.width * 0.1,
                                  height: size.height,
                                  // fit: BoxFit.fill,
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    data.title,
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      // Icon(/
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '${data.rank}'.toPersianNumbers(),
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          cartController.addToCArt(
                                              Product.products[index]);
                                          // controller.increment();
                                          // Get.to(
                                          //   CartNew(),
                                          // );
                                          // print(product.id);
                                        },
                                        child: const Icon(
                                          CupertinoIcons.cart_badge_plus,
                                          color: Colors.green,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      // const Icon(
                                      //   CupertinoIcons.cart_badge_minus,
                                      //   color: Colors.red,
                                      // ),
                                      // const SizedBox(
                                      //   width: 15,
                                      // ),
                                      Text(
                                        " ${data.price} ریال"
                                            .toPersianNumbers(),
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Text('');
                    }
                    // return Container(
                    //   margin: EdgeInsets.all(2),
                    //   width: size.width,
                    //   height: size.height * 0.15,
                    //   decoration: BoxDecoration(
                    //     color: Colors.blue,
                    //   ),
                    // );
                  },
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.06,
                decoration: BoxDecoration(color: Colors.white),
                // child:
              ),
            ],
          ),
        ),
      ),
    );
  }
}
