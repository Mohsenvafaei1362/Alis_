import 'package:alis/screens/product/components/cartNew.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:persian_utils/persian_utils.dart';

import '../../../constants.dart';
import '../../../controller/controller.dart';
import '../../../models/category.dart';
import '../../../models/products.dart';
import '../../details/details_screen.dart';

class AllProduct extends StatefulWidget {
  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  // const AllProduct({Key? key}) : super(key: key);
  int selectedIndex = 0;
  // DBHelper dbHelper = DBHelper();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final data = Category.categories;
    final product = Product.products;
    final CartController cartController = Get.put(CartController());
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.06,
          child: FloatingActionButton.extended(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
            backgroundColor: Color(0xfffafafa),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FollowUp(),
              //   ),
              // );
            },
            label: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Center(
                      child: Container(
                        width: size.width * 0.9,
                        height: size.height * 0.06,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Color(0xffef5350),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text('ادامه خرید'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xffeceff1),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.keyboard_backspace_rounded)),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        width: size.width * 0.87,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Colors.black26,
                            ),
                          ),
                          // color: Colors.amber,
                        ),
                        child: TextField(
                          // obscureText: false,
                          decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: 'جستجو در عالیس',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * 0.9,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(

                            // color: Colors.amber,
                            ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(CupertinoIcons.slider_horizontal_3),
                            SizedBox(
                              width: 5,
                            ),
                            Text('فیلترها'),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(CupertinoIcons.sort_down),
                            Text('پربازدیدترین ها'),
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
                            SizedBox(
                              width: 10,
                            ),
                            // Icon(Icons.share),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: size.height * 0.09,
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 230, 19, 19),
                    color: Color(0xffffffff),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final category = data[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          height: size.height,
                          alignment: Alignment.center,
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  '${category.image}',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                category.title,
                                style: TextStyle(
                                  color: index == selectedIndex
                                      ? Color(0xffe65100)
                                      : Color.fromARGB(204, 46, 46, 46),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(bottom: 200),
                  width: size.width,
                  height: size.height * 0.6,
                  // color: Colors.red,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (context, index) {
                      // final data = product[index];
                      return GoToDetails(
                        product: product[index],
                        size: size,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: DetailesScreen(
                                  product: product[index],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.13,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GoToDetails extends StatelessWidget {
  const GoToDetails({
    Key? key,
    required this.product,
    required this.size,
    required this.press,
  }) : super(key: key);

  final Product product;
  final Size size;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
        width: size.width,
        height: size.height * 0.16,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white70,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
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
                  '${product.image}',
                  width: size.width * 0.1,
                  height: size.height,
                  // fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    product.title,
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
                        '${product.rank}'.toPersianNumbers(),
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
                          cartController.addToCArt(product);
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
                      const Icon(
                        CupertinoIcons.cart_badge_minus,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        " ${product.price} ریال".toPersianNumbers(),
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
      ),
    );
  }
}
