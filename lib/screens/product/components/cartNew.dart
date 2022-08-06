import 'package:alis/controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../../models/products.dart';
import 'cart3.dart';

class CartNew extends StatefulWidget {
  const CartNew({Key? key}) : super(key: key);

  @override
  State<CartNew> createState() => _CartNewState();
}

class _CartNewState extends State<CartNew> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final CartController cartController = Get.put(CartController());

    String? val;
    int num = -1;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Cart(size: size),
              Column(
                children: [
                  Obx(
                    () => cartController.products.length > 0
                        ? SizedBox(
                            height: size.height * 0.8,
                            child: ListView.builder(
                              itemCount: cartController.products.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: CartProductCard(
                                      controller: cartController,
                                      product: cartController.products.keys
                                          .toList()[index],
                                      quantity: cartController.products.values
                                          .toList()[index],
                                      index: index,
                                    ));
                              },
                            ),
                          )
                        : Container(
                            width: size.width,
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    width: size.width,
                                    height: size.height * 0.5,
                                    color: Colors.white,
                                    child: Image.asset('assets/images/t5.jpg'),
                                  ),
                                  Container(
                                    width: size.width,
                                    height: size.height * 0.3,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        'سبد خرید شما خالی است',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.amber[900],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ),
                  Obx(
                    () => cartController.products.length > 0
                        ? Container(
                            height: size.height * 0.06,
                            color: Colors.amber,
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('جمع کل'),
                                    Text(cartController.total),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Cart3(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(5)),
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      'تایید وثبت سفارش',
                                      style: TextStyle(
                                          fontFamily: 'IransansDn',
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Cart extends StatefulWidget {
  const Cart({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final CartController cartController = Get.put(CartController());
    String? val;
    int num = -1;
    return Column(
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).showBottomSheet<void>(
              (BuildContext context) {
                return Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  height: widget.size.height * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  // color: Colors.amber,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          'انتخاب زمان تحویل سفارش',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'دوشنبه',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Container(
                            //   width: size.width * 0.15,
                            //   height: size.height * 0.05,
                            //   color: Colors.red,
                            // ),
                          ],
                        ),
                        Text(
                          '1401/04/28'.toPersianDigit(),
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: Text(
                            "تحویل یک ساعته",
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio(
                            value: "تحویل یک ساعته",
                            groupValue: num,
                            onChanged: (value) {
                              setState(() {
                                val = value.toString();
                              });
                            },
                            activeColor: Colors.green,
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: Text(
                            "ساعت 9 -10".toPersianDigit(),
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio(
                              value: "ساعت 9 -10",
                              groupValue: num,
                              onChanged: (value) {
                                setState(() {
                                  val = value.toString();
                                });
                              }),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: Text(
                            "ساعت 10 -11".toPersianDigit(),
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio(
                              value: "ساعت 10 -11",
                              groupValue: num,
                              onChanged: (value) {
                                setState(() {
                                  val = value.toString();
                                });
                              }),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: Text(
                            "ساعت 11 -12".toPersianDigit(),
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Radio(
                              value: "ساعت 11 -12",
                              groupValue: num,
                              onChanged: (value) {
                                setState(() {
                                  val = value.toString();
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: cartController.products.length > 0
              ? Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.only(right: 20),
                      width: widget.size.width,
                      height: widget.size.height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Colors.black26, width: 1),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(CupertinoIcons.back),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('انتخاب زمان تحویل سفارش'),
                        ],
                      ),
                    ),
                  ],
                )
              : Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.back),
                        ],
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}

class CartProductCard extends StatelessWidget {
  const CartProductCard(
      {Key? key,
      required this.controller,
      required this.product,
      required this.quantity,
      required this.index})
      : super(key: key);

  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: size.width,
        height: size.height * 0.28,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.black26, width: 1),
          ),
        ),
        // color: Colors.amber,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.3,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    product.image,
                    width: size.width,
                    height: size.height * 0.15,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.addToCArt(product);
                        },
                        icon: Icon(Icons.add_circle_outline),
                      ),
                      Text('${quantity}'),
                      IconButton(
                        onPressed: () {
                          controller.removeCart(product);
                        },
                        icon: Icon(Icons.remove_circle_outline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.deepOrange,
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'قیمت',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        // '${cartController.products[0].price}'
                        // .toPersianDigit(),
                        '${product.price}',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'کسورات',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 11,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.arrowtriangle_down_fill,
                    size: 10,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      'تخفیف',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      'اعتبار',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'مبلغ نهایی',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
