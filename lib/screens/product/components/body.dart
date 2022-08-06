import 'package:alis/screens/product/components/cartNew.dart';
import 'package:alis/screens/product/components/commentsuggest.dart';
import 'package:alis/screens/product/components/ghole.dart';
import 'package:alis/screens/wallet.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alis/constants.dart';
import 'package:alis/screens/product/components/allProducts.dart';
import 'package:alis/screens/product/components/category_list.dart';
import 'package:get/get.dart';
import '../../../components/search_box.dart';
import '../../../controller/controller.dart';
import '../../../drawer/navbar.dart';
import '../../../models/data_cart.dart';
import '../../../models/pepole.dart';
import '../../../models/products.dart';
import '../../../models/users.dart';
import 'Festival.dart';
import 'cart3.dart';
import '../../dashboard/components/image_slider.dart';
import '../../dashboard/dashboard.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:persian_utils/persian_utils.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import '../../details/details_screen.dart';
import 'package:share_plus/share_plus.dart';

class Body extends StatefulWidget {
  // const Test({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _page = 1;
  int selectedpage = 0;
  final _pageOptions = [Dashboard()];
  final bgcolor = [Colors.orange, Colors.pink, Colors.greenAccent];

  @override
  Widget build(BuildContext context) {
    final rankPepole = Pepole.pepoles;
    final CartController cartController = Get.put(CartController());
    Size size = MediaQuery.of(context).size;
    final Product5 = AllProducts5.products5;
    final user = AllUsers.users;
    final product = Product.products;

    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Color.fromARGB(254, 250, 250, 250),
        drawer: NavBar(),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 1,
          buttonBackgroundColor: Color(0xffa7ff83),
          backgroundColor: Colors.green,
          items: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.dashboard_customize_rounded, size: 17),
                Text(
                  'دسته بندی',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 9,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home_sharp, size: 25),
                Text(
                  'خانه',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle, size: 17),
                Text(
                  'پروفایل',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
          onTap: (index) {
            setState(
              () {
                _page = index;
              },
            );
          },
          letIndexChange: (index) => true,
        ),
        appBar: AppBar(
          title: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                scrollable: true,
                                title: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'تغییر کاربری',
                                          style: TextStyle(
                                              color: Colors.indigoAccent),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.black26,
                                    ),
                                  ],
                                ),
                                content: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.zero,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Radio(
                                                value: 'change',
                                                groupValue: 1,
                                                onChanged: (value) {}),
                                            Spacer(),
                                            Text('مشتری'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              'assets/icons/user.png',
                                              width: 24,
                                              height: 24,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Radio(
                                                value: 'change',
                                                groupValue: 1,
                                                onChanged: (value) {}),
                                            Spacer(),
                                            Text('فروشنده'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              'assets/icons/user.png',
                                              width: 24,
                                              height: 24,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Radio(
                                                value: 'change',
                                                groupValue: 1,
                                                onChanged: (value) {}),
                                            Spacer(),
                                            Text('موزع'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              'assets/icons/user.png',
                                              width: 24,
                                              height: 24,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // actions: [
                                //   RaisedButton(
                                //       child: Text("تایید"),
                                //       onPressed: () {
                                //         // your code
                                //         Navigator.pop(context);
                                //       })
                                // ],
                              );
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 4, 0),
                          child: Icon(
                            Icons.account_circle,
                            size: 44,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Ghole(),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            // height: size.height * 0.7,
                            // margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            // padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    'assets/images/goal.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'فرهاد رضوانی',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        'امتیاز شما : 100'.toPersianDigit(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        'ویزیتور',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 9,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            Row(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Badge(
                    badgeContent: Obx(
                      () => Text(
                        '${cartController.products.length}'.toPersianDigit(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) => Directionality(
                          textDirection: TextDirection.rtl,
                          child: CartNew(),
                        ),
                      ),
                    );
                  },
                  child: Align(
                    child: Icon(CupertinoIcons.cart),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Badge(
                    badgeContent: Text(
                      '${0}'.toPersianDigit(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (contex) => Directionality(
                    //       textDirection: TextDirection.rtl,
                    //       child: CartNew(),
                    //     ),
                    //   ),
                    // );
                  },
                  child: Align(
                    child: Icon(
                      CupertinoIcons.bell_fill,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),

            // Icon(
            //   CupertinoIcons.bell_fill,
            //   color: Colors.white,
            // ),
            SizedBox(
              width: 10,
            ),
          ],
          backgroundColor: Colors.green[300],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                children: [
                  if (_page == 2)
                    Profile(user: user)
                  // Container(
                  //   width: size.width,
                  //   height: size.height,
                  //   color: Colors.amber,
                  //   child: Center(child: Text('صفحه پیگیری سفارش')),
                  // )
                  else if (_page == 0)
                    Category(size: size)
                  else if (_page == 1)
                    Column(
                      children: [
                        Slider(),
                        TitrAllProducts(
                          size: size,
                          text1: 'پرتخفیف ترین ها',
                          text2: 'مشاهده همه >',
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: AllProduct(),
                                ),
                              ),
                            );
                          },
                        ),
                        SliderProduct_1(size: size, product: product),
                        ImageBox_1(size: size),
                        // const SizedBox(height: 5),
                        TitrAllProducts(
                          size: size,
                          text1: 'لیست محصولات',
                          text2: 'مشاهده همه >',
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: AllProduct(),
                                ),
                              ),
                            );
                          },
                        ),
                        ShowAllProducts(size: size, product: product),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width,
                              child: Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    width: size.width,
                                    // height: size.height * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.white,

                                      // borderRadius: BorderRadius.circular(13),
                                      // border: Border.all(color: Colors.black26),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: size.width,
                                          height: size.height * 0.04,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          decoration: BoxDecoration(
                                            // border: Border.all(
                                            //   color: Colors.blue,
                                            //   width: 1,
                                            // ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'لیست جشنواره ها',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: size.width,
                                          margin: EdgeInsets.all(15),
                                          // height: size.height * 0.13,
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  // Get.to(
                                                  //     CommentSuggest());
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Directionality(
                                                        textDirection:
                                                            TextDirection.rtl,
                                                        child: Festival(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      width: size.width * 0.54,
                                                      child: Text(
                                                        'جشنواره تخفیف نوشابه های گازدار',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ),
                                                    // SizedBox(
                                                    //   width: 20,
                                                    // ),
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      child: Text(
                                                        'بازدید : 5 نفر'
                                                            .toPersianDigit(),
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      width: size.width * 0.12,
                                                      padding:
                                                          EdgeInsets.all(3),
                                                      decoration: BoxDecoration(
                                                          color: Colors.red,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Center(
                                                        child: Text(
                                                          'مشاهده'
                                                              .toPersianDigit(),
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      width: size.width * 0.54,
                                                      child: Text(
                                                        'جشنواره تخفیف آبمیوه های گازدار',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ),
                                                    // SizedBox(
                                                    //   width: 20,
                                                    // ),
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      child: Text(
                                                        'بازدید : 5 نفر'
                                                            .toPersianDigit(),
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      width: size.width * 0.12,
                                                      padding:
                                                          EdgeInsets.all(3),
                                                      decoration: BoxDecoration(
                                                          color: Colors.red,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Center(
                                                        child: Text(
                                                          'مشاهده'
                                                              .toPersianDigit(),
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      width: size.width * 0.54,
                                                      child: Text(
                                                        'جشنواره تخفیف دوغ عالیس',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ),
                                                    // SizedBox(
                                                    //   width: 20,
                                                    // ),
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      child: Text(
                                                        'بازدید : 5 نفر'
                                                            .toPersianDigit(),
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      margin: EdgeInsets.all(2),
                                                      width: size.width * 0.12,
                                                      padding:
                                                          EdgeInsets.all(3),
                                                      decoration: BoxDecoration(
                                                          color: Colors.red,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: Center(
                                                        child: Text(
                                                          'مشاهده'
                                                              .toPersianDigit(),
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 8, 20, 8),
                                          child: Row(
                                            children: [
                                              Text('سه نفر برتر مسابقات'),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: size.width,
                                          height: size.height * 0.18,
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(
                                                color: Colors.black12,
                                                width: 1,
                                              ),
                                              top: BorderSide(
                                                color: Colors.black12,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                          child: ListView.builder(
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              final data = rankPepole[index];
                                              return Container(
                                                width: size.width,
                                                height: size.height * 0.037,
                                                margin: EdgeInsets.all(2),
                                                // color: Colors.amber,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    ClipOval(
                                                      child: Image.asset(
                                                        '${data.image}',
                                                        width: 30,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: size.width * 0.5,
                                                      child: Text(
                                                        data.name,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black87),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '${data.score}'
                                                            .toPersianDigit(),
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black87),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width: size.width,
                                          padding: EdgeInsets.all(15),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: size.width,
                                                height: size.height * 0.04,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  // border: Border.all(
                                                  //   color: Colors.blue,
                                                  //   width: 1,
                                                  // ),
                                                  color: Colors.white,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'مسابقه شماره یک',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary:
                                                                  Colors.white,
                                                              onPrimary:
                                                                  Colors.red),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'شرکت در مسابقات',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'IransansDn',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: size.width,
                                                height: size.height * 0.12,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.amber,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/images/mo.png',
                                                      ),
                                                      fit: BoxFit.fill),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: size.width,
                                                height: size.height * 0.04,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                decoration: BoxDecoration(
                                                  // border: Border.all(
                                                  //   color: Colors.blue,
                                                  //   width: 1,
                                                  // ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'شرکت در نظر سنجی',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Colors.white,
                                                        onPrimary: Colors.red,
                                                      ),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'شرکت در نظر سنجی',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'IransansDn',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: size.width,
                                                // height: size.height * 0.13,
                                                padding: EdgeInsets.all(15),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.black12,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.white,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        // Get.to(
                                                        //     CommentSuggest());
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                Directionality(
                                                              textDirection:
                                                                  TextDirection
                                                                      .rtl,
                                                              child:
                                                                  CommentSuggest(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            width: size.width *
                                                                0.54,
                                                            child: Text(
                                                              'چرا خرید از شرکت/سایت ما را انتخاب کردید؟',
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20,
                                                          // ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            child: Text(
                                                              'بازدید : 5 نفر'
                                                                  .toPersianDigit(),
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            width: size.width *
                                                                0.12,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            child: Center(
                                                              child: Text(
                                                                '10  امتیاز'
                                                                    .toPersianDigit(),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            width: size.width *
                                                                0.54,
                                                            child: Text(
                                                              'چگونه وب‌سایت ما را پیدا کردید؟',
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20,
                                                          // ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            child: Text(
                                                              'بازدید : 5 نفر'
                                                                  .toPersianDigit(),
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            width: size.width *
                                                                0.12,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            child: Center(
                                                              child: Text(
                                                                '15  امتیاز'
                                                                    .toPersianDigit(),
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            width: size.width *
                                                                0.54,
                                                            child: Text(
                                                              ' آیا محصول موردنظر خود را راحت پیدا کردید؟',
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          ),
                                                          // SizedBox(
                                                          //   width: 20,
                                                          // ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            child: Text(
                                                              'بازدید : 5 نفر'
                                                                  .toPersianDigit(),
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                              ),
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            width: size.width *
                                                                0.12,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            child: Center(
                                                              child: Text(
                                                                '5  امتیاز'
                                                                    .toPersianDigit(),
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        10),
                                                              ),
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          const ImageSlider(
            nameImage: 'assets/images/99.08.jpg',
            nameImage1: 'assets/images/55.jpg',
            nameImage2: 'assets/images/56.jpg',
            nameImage3: 'assets/images/57.jpg',
            nameImage4: 'assets/images/56.jpg',
          ),
          CategoryList(),
          const SizedBox(
            height: kDefaultPadding / 3,
          ),
        ],
      ),
    );
  }
}

class Cart extends StatefulWidget {
  const Cart({
    Key? key,
    required this.size,
    // required this.Product5,
  }) : super(key: key);

  final Size size;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  // final List<Product5> Product5;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Product5 = AllProducts5.products5;
    String? val;
    int num = -1;
    return Container(
      width: widget.size.width,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Scaffold.of(context).showBottomSheet<void>(
                (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: size.height * 0.5,
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
          ),
          Stack(
            children: [
              Container(
                width: widget.size.width,
                height: widget.size.height,
                child: ListView.builder(
                  itemCount: Product5.length,
                  itemBuilder: (context, index) {
                    final data = Product5[index];
                    return Column(
                      children: [
                        Container(
                          width: widget.size.width,
                          decoration: BoxDecoration(
                            border: BorderDirectional(
                              bottom: BorderSide(color: Colors.black12),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: widget.size.width,
                                height: widget.size.height * 0.3,
                                // color: Colors.red,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      width: widget.size.width * 0.4,
                                      height: widget.size.height * 0.3,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              data.image,
                                              // width: 68,
                                              height: widget.size.height * 0.2,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(32),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data.title,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
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
                                                '${data.price}'
                                                    .toPersianDigit(),
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
                                            CupertinoIcons
                                                .arrowtriangle_down_fill,
                                            size: 10,
                                            color: Colors.black45,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Text(
                                              'تخفیف'.toPersianDigit(),
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Text(
                                              'اعتبار'.toPersianDigit(),
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'اعتبار',
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 11,
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
                                              Text(
                                                '${data.price - data.price * 3 / 100}'
                                                    .toPersianDigit(),
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
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
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Directionality(
                            textDirection: TextDirection.rtl,
                            child: Cart3(),
                            // child:Login(onChanged: onChanged),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      color: Color(0xFFcfd8dc),
                      width: widget.size.width * 0.9,
                      height: widget.size.height * 0.06,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
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
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'مجموع',
                                style: TextStyle(
                                    fontFamily: 'IransansDn',
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/99.08.jpg',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              direction: Axis.horizontal,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/category/ALIC-H-1.jpg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'دوغ ها',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/63.png',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'شیر طعم دار',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/47.jpg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'آبمیوه های گازدار',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/category/09.jpg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'آب معدنی',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/category/062.jpg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'ویت بار',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/category/01.jpg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'نوشابه ها',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/category/001.jpg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'نکتار',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/category/05.jpg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'ماءالشعیر',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/category/054.jpg',
                        width: 70,
                        height: 70,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'آبمیوه ها',
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final List<Users> user;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.74,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Color.fromARGB(255, 99, 98, 98),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/icons/user.png',
                        width: 48,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Text(
                      ' امتیاز شما ${user[1].score}'.toPersianDigit(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Directionality(
                          textDirection: TextDirection.rtl,
                          child: Wallet(),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    child: Row(children: [
                      Image.asset(
                        'assets/icons/wallet.png',
                        width: 32,
                        height: 32,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('موجودی حساب'),
                      Spacer(),
                      Text('0'),
                      Image.asset(
                        'assets/icons/tom.png',
                        width: 24,
                        height: 24,
                      ),
                    ]),
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: size.height,
                padding: EdgeInsets.all(32),
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'نام :  ${user[1].fname}',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'نام خانوادگی :  ${user[1].lname}',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          ' ایمیل : ',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '${user[0].email}',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'شماره تلفن :  ${user[0].phone}'.toPersianDigit(),
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'ویرایش اطلاعات',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ShowAllProducts extends StatelessWidget {
  const ShowAllProducts({
    Key? key,
    required this.size,
    required this.product,
  }) : super(key: key);

  final Size size;
  final List<Product> product;
  final String _content =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum diam ipsum, lobortis quis ultricies non, lacinia at justo.';
  void _shareContent() {
    Share.share(_content);
  }

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: SizedBox(
        height: size.height * 0.4,
        width: size.width,
        child: Container(
          // color: Colors.green,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final data = product[index];
              return Column(
                children: [
                  Container(
                    // margin: EdgeInsets.all(1),
                    // margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
                    height: size.height * 0.38,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.black26,
                          width: 1,
                        ),
                      ),
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(1),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: DetailesScreen(product: product[index])),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                width: size.width / 3,
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    cartController.addToCArt(product[index]);
                                  },
                                  child: const Icon(
                                    CupertinoIcons.cart_badge_plus,
                                    // Icons.add_shopping_cart_sharp,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                // InkWell(
                                //   onTap: () {
                                //     _shareContent;
                                //   },
                                //   child: const Icon(
                                //     Icons.share,
                                //     // color: Colors.red,
                                //   ),
                                // ),
                                Spacer(),
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
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "ریال ${data.price}".toPersianNumbers(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
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
      ),
    );
  }
}

class TitrAllProducts extends StatelessWidget {
  const TitrAllProducts({
    Key? key,
    required this.size,
    required this.text1,
    required this.text2,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String text1, text2;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width,
      height: size.height * 0.04,
      color: Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.only(left: 22.0, right: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text1,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff37474f)),
            ),
            InkWell(
              onTap: press,
              child: Text(
                text2,
                style: TextStyle(
                  color: Color(0xff37474f),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageBox_1 extends StatelessWidget {
  const ImageBox_1({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 5),
      width: size.width,
      height: size.height * 0.13,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            image: AssetImage('assets/images/p8.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class SliderProduct_1 extends StatelessWidget {
  SliderProduct_1({
    Key? key,
    required this.size,
    required this.product,
  }) : super(key: key);

  final Size size;
  final List<Product> product;
  final String _content =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum diam ipsum, lobortis quis ultricies non, lacinia at justo.';
  void _shareContent() {
    Share.share(_content);
  }

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: size.height * 0.4,
        width: size.width,
        child: Container(
          // color: Color(0xffe57373),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              final data = product[index];
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              // Test(),
                              Directionality(
                                  textDirection: TextDirection.rtl,
                                  child:
                                      DetailesScreen(product: product[index])),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      height: size.height * 0.37,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffbdbdbd),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(1),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    cartController.addToCArt(product[index]);
                                  },
                                  child: const Icon(
                                    CupertinoIcons.cart_badge_plus,
                                    // Icons.add_shopping_cart_sharp,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                // InkWell(
                                //   onTap: () {
                                //     _shareContent;
                                //   },
                                //   child: const Icon(
                                //     Icons.share,
                                //     // color: Colors.red,
                                //   ),
                                // ),
                                Spacer(),
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
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "ریال ${data.price}".toPersianNumbers(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
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
      ),
    );
  }
}
