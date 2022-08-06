import 'package:alis/models/comment.dart';
import 'package:alis/models/proposal.dart';
import 'package:alis/screens/dashboard/components/image_slider.dart';
import 'package:alis/screens/details/components/comment_product.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_utils/persian_utils.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:slide_countdown/slide_countdown.dart';
import '../../../controller/controller.dart';
import '../../../models/products.dart';
import '../../product/components/cartNew.dart';

class Body extends StatefulWidget {
  // const Body({Key? key}) : super(key: key);
  final Product product;

  const Body({super.key, required this.product});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;

  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    var bool = false;
    Size size = MediaQuery.of(context).size;
    final comment = Comment.comments;
    final category = Product.products;
    final likeProduct = Proposal.proposals;
    final CartController cartController = Get.put(CartController());

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: size.width * 0.95,
        height: size.height * 0.08,
        child: FloatingActionButton.extended(
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
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
              children: [
                InkWell(
                  onTap: () {
                    cartController.addToCArt(widget.product);
                  },
                  child: Container(
                    width: size.width * 0.38,
                    height: size.height * 0.06,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Color(0xffef5350),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text('افزودن به سبد خرید'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: size.width * 0.35,
                  height: size.height * 0.07,
                  // color: Color(0xffffa34d),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: size.width * 0.1,
                            height: size.height * 0.03,
                            padding: EdgeInsets.all(0),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text('2%'.toPersianDigit())),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${widget.product.price} ریال'.toPersianDigit(),
                            style: TextStyle(
                              color: Colors.black38,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${widget.product.price} ریال'.toPersianDigit(),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Text(
          //   'بازگشت به صفحه اصلی',
          //   style:
          //       TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          // ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15, top: 10, left: 15),
                    width: size.width,
                    height: size.height * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border(
                      //   bottom: BorderSide(
                      //     color: Colors.orange,
                      //     width: 1,
                      //   ),
                      // ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(CupertinoIcons.back),
                            ),
                            Spacer(),
                            Row(
                              children: [
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
                                // Align(
                                //   alignment: Alignment.topLeft,
                                //   child: Obx(
                                //     () => Text(
                                //         '${controller.count}'.toPersianDigit()),
                                //   ),
                                // ),
                                // Icon(CupertinoIcons.cart),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  bool = !bool;
                                });
                                print(bool);
                              },
                              icon: Icon(Icons.favorite_border),
                            ),
                            // Icon(Icons.favorite_border),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.share),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: size.height * 0.08,
                    margin: EdgeInsets.only(top: 10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                          child: Text(
                            'پیشنهاد شگفت انگیز',
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: SlideCountdownSeparated(
                              duration: const Duration(days: 2),
                            ),
                          ),
                          //  Text(
                          //   '1401/04/20'.toPersianDigit(),
                          //   style: TextStyle(
                          //     color: Colors.deepOrangeAccent,
                          //     fontSize: 13,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        ImageSlider(
                          nameImage: widget.product.image,
                          nameImage1: 'assets/images/55.jpg',
                          nameImage2: 'assets/images/56.jpg',
                          nameImage3: 'assets/images/57.jpg',
                          nameImage4: 'assets/images/56.jpg',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: size.width,
                    decoration: BoxDecoration(
                        // color: Colors.yellow
                        ),
                    // padding: EdgeInsets.only(right: 32 , left: 32),
                    child: Column(
                      children: [
                        Container(
                          width: size.width,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.all(32.0),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'آبمیوه / آبمیوه های گازدار ',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.blue[200]),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(widget.product.title),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.amber,
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '${widget.product.rank}'.toPersianDigit(),
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black45),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'دیدگاه کاربران',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.blue[200]),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'پرسش و پاسخ',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.blue[200]),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    CupertinoIcons.hand_thumbsup,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '92% (870 نفر) از خریداران این کالا را پیشنهاد کرده اند'
                                        .toPersianDigit(),
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 5, top: 5),
                          padding: EdgeInsets.all(32),
                          width: size.width,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('شعبه'),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'شعبه مرکزی',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.black26,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'موجود در انبار',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.black26,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text('پروموشن ها'),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'در صورت خرید 4 عدد به بالا 3% تخفیف دریافت می کنید'
                                            .toPersianDigit(),
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'در صورت خرید 4 عدد به بالا 100  امتیاز دریافت می کنید'
                                            .toPersianDigit(),
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.black26,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'در صورت خرید کالاهای زیر به همراه این کالا 100 امتیاز دریافت می کنید'
                                            .toPersianDigit(),
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: size.width,
                                height: size.height * 0.4,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: likeProduct.length,
                                  itemBuilder: (context, index) {
                                    final data = likeProduct[index];
                                    return Column(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            margin:
                                                EdgeInsets.fromLTRB(5, 5, 5, 5),
                                            height: size.height * 0.37,
                                            width: size.width * 0.45,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xffbdbdbd),
                                                  spreadRadius: 1,
                                                  blurRadius: 2,
                                                  offset: Offset(0,
                                                      1), // changes position of shadow
                                                ),
                                              ],
                                              color: Color(0xffffffff),
                                              borderRadius:
                                                  BorderRadius.circular(1),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(0, 5, 0, 5),
                                                      width: size.width * 0.4,
                                                      height: size.height * 0.2,
                                                      child: Image.asset(
                                                        '${data.image}',
                                                        width: size.width,
                                                        height: size.height,
                                                        // fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    data.title,
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Icon(
                                                        Icons
                                                            .add_shopping_cart_sharp,
                                                        color: Colors.green,
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .remove_shopping_cart_sharp,
                                                        color: Colors.red,
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "ریال ${data.price}"
                                                                .toPersianNumbers(),
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Container(
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .green,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      5,
                                                                      0,
                                                                      5,
                                                                      0),
                                                              child: Text(
                                                                '3%'.toPersianNumbers(),
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
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
                              Divider(
                                color: Colors.black26,
                              ),
                              Text(
                                'محصولات مشابه',
                                style: TextStyle(),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              LikeProduct(
                                  size: size,
                                  category: category,
                                  widget: widget),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.all(32.0),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('ویژگی های محصول'),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'نوع رایحه : ',
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          ' لیمو ',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'حجم : ',
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          ' 1.5 لیتر '.toPersianDigit(),
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'ویژگی : ',
                                          style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          ' بدون الکل ',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.all(32.0),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('دیدگاه کاربران'),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: size.width,
                                height: size.height * 0.2,
                                // color: Colors.red,
                                color: Colors.white,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: comment.length,
                                  itemBuilder: (context, index) {
                                    final dataComment = comment[index];
                                    return Column(
                                      children: [
                                        Container(
                                          width: size.width * 0.5,
                                          height: size.height * 0.18,
                                          margin: EdgeInsets.all(5),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xffbdbdbd),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(0,
                                                      1), // changes position of shadow
                                                ),
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                color: Colors.black26,
                                              )),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                dataComment.title,
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                dataComment.description,
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(Directionality(
                                textDirection: TextDirection.rtl,
                                child: Comment_Product()));
                          },
                          child: Container(
                            width: size.width,
                            margin: EdgeInsets.symmetric(vertical: 5),
                            padding: EdgeInsets.all(32.0),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.chat_bubble),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'دیدگاه خود را درباره این کالا بنویسید',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '10 امتیاز عالیس'.toPersianDigit(),
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  CupertinoIcons.chevron_back,
                                  color: Colors.black54,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: size.width,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.all(32.0),
                          // color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // ),
      ),
    );
    // );
  }
}

class LikeProduct extends StatelessWidget {
  const LikeProduct({
    Key? key,
    required this.size,
    required this.category,
    required this.widget,
  }) : super(key: key);

  final Size size;
  final List<Product> category;
  final Body widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          final data = category[index];
          if (data.category == widget.product.category) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    // margin:
                    // EdgeInsets.fromLTRB(5, 5, 5, 5),
                    height: size.height * 0.37,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border(
                        left: BorderSide(
                          color: Colors.black26,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                              width: size.width * 0.4,
                              height: size.height * 0.2,
                              child: Image.asset(
                                '${data.image}',
                                width: size.width,
                                height: size.height,
                                // fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            data.title,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.add_shopping_cart_sharp,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.remove_shopping_cart_sharp,
                                color: Colors.red,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "ریال ${data.price}".toPersianNumbers(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                      child: Text(
                                        '3%'.toPersianNumbers(),
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
          return Text('');
        },
      ),
    );
  }
}
