import 'package:flutter/material.dart';
import 'package:alis/constants.dart';
import 'package:get/get.dart';

import '../../../models/category.dart';
import 'allProducts.dart';

class CategoryList extends StatefulWidget {
  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;

  // List category = [
  //   'همه محصولات',
  //   'آب میوه های گازدار',
  //   'ماءالشعیر',
  //   'شیر طعم دار',
  //   'آب میوه'
  // ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final data = Category.categories;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 70,
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
              // margin: EdgeInsets.only(
              //   left: kDefaultPadding / 10,
              //   right: index == data.length - 1 ? kDefaultPadding : 0,
              // ),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  //   color: index == selectedIndex
                  //       ?  Color(0xFFf0f0f0)
                  //       : Colors.transparent,
                  //   // borderRadius: BorderRadius.circular(500),
                  ),
              child: InkWell(
                onTap: () {
                  // if (category.id == 1) {
                  //   Get.to(Directionality(
                  //       textDirection: TextDirection.rtl, child: AllProduct()));
                  // }
                  category.id == 1
                      ? Get.to(Directionality(
                          textDirection: TextDirection.rtl,
                          child: AllProduct()))
                      : category.id == 2
                          ? Get.to(Directionality(
                              textDirection: TextDirection.rtl,
                              child: AllProduct()))
                          : category.id == 3
                              ? Get.to(Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: AllProduct()))
                              : category.id == 4
                                  ? Get.to(Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: AllProduct()))
                                  : category.id == 5
                                      ? Get.to(Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: AllProduct()))
                                      : category.id == 6
                                          ? Get.to(Directionality(
                                              textDirection: TextDirection.rtl,
                                              child: AllProduct()))
                                          : category.id == 7
                                              ? Get.to(Directionality(
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  child: AllProduct()))
                                              : null;
                },
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
            ),
          );
        },
      ),
    );
  }
}
