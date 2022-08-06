import 'package:alis/models/data_cart.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product5 = AllProducts5.products5;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(12),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         // color: Colors.white,
              //         ),
              //     child: Row(
              //       children: [
              //         Icon(Icons.keyboard_arrow_right),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Text('سبد خرید'),
              //       ],
              //     ),
              //   ),
              // ),
              Container(
                width: size.width,
                height: size.height,
                child: ListView.builder(
                  itemCount: Product5.length,
                  itemBuilder: (context, index) {
                    final data = Product5[index];
                    return Container(
                      decoration: BoxDecoration(
                        border: BorderDirectional(
                          bottom: BorderSide(color: Colors.black12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              data.image,
                              width: 68,
                              height: 68,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data.title),
                                SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    // border: Border.all(color: Colors.black26),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/add.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('1'.toPersianDigit()),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                        'assets/icons/minimize.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text('${data.price}'.toPersianDigit()),
                                Image.asset(
                                  'assets/images/tom.png',
                                  width: 18,
                                  height: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
