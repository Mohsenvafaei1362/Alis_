import 'package:alis/models/data_settings_store.dart';
import 'package:alis/models/item_dashboard.dart';
import 'package:alis/screens/new_shop.dart';
import 'package:alis/screens/personnel/Personnel.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import 'settings.dart';

class Settings_Store extends StatefulWidget {
  @override
  State<Settings_Store> createState() => _Settings_StoreState();
}

class _Settings_StoreState extends State<Settings_Store> {
  // const Test54({Key? key}) : super(key: key);
  final List<String> items = [
    'شعبه اصلی',
    'شعبه جدید',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: AlertDialog(
                  title: Text('اضافه کردن فروشگاه جدید'),
                  actions: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.blue),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'نام فروشگاه',

                          //
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.blue),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'شماره تماس',

                          //
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        style: TextStyle(
                            fontFamily: 'IransansDn',
                            fontSize: 10,
                            color: Colors.blue),
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: 'آدرس',

                          //
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'نوع شعبه',
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).hintColor,
                            fontFamily: 'IransansDn',
                          ),
                        ),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: New_Shop(),
                          ),
                        );
                      },
                      child: Text(
                        'مرحله بعد',
                        style: TextStyle(fontFamily: 'IransansDn'),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      body: SafeArea(
        child: Test_777(),
      ),
    );
  }
}

class Test_777 extends StatelessWidget {
  const Test_777({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Product7 = AllProducts7.products7;
    final Product6 = AllNameShop.nameshop;
    return Stack(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Container(
                  width: double.infinity,
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.lightBlueAccent,
                  ),
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      final data = Product7[0];
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/shop.png',
                              width: 48,
                              height: 48,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              data.title,
                              style: TextStyle(color: Colors.black45),
                            ),
                            // Text(
                            //   'فعال',
                            //   style: TextStyle(color: Colors.black45),
                            // ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 8, 24, 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: BorderDirectional(
                                        bottom: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            data.title3,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            data.title4,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 8, 24, 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: BorderDirectional(
                                        bottom: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            data.title5,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '${data.price}'.toPersianDigit(),
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 8, 24, 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: BorderDirectional(
                                        bottom: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            data.title6,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            data.title7.toPersianDigit(),
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 8, 26, 8),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            data.title8,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            data.title9.toPersianDigit(),
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
                //   },
                // );
              },
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).showBottomSheet<void>(
                        (BuildContext context) {
                          return Container(
                            width: double.infinity,
                            height: size.height * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              color: Colors.lightBlueAccent,
                            ),
                            child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                final data = Product7[0];
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/shop.png',
                                        width: 48,
                                        height: 48,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        data.title,
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                      // Text(
                                      //   'فعال',
                                      //   style: TextStyle(color: Colors.black45),
                                      // ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title3,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title4,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title5,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      '${data.price}'
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title6,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title7
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 26, 3),
                                            child: Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title8,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title9
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: size.width * 0.9,
                                        height: size.height * 0.04,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Get.to(
                                              Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: Personnel(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'لیست پرسنل',
                                            style: TextStyle(
                                                fontFamily: 'IransansDn'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(top: 40),
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/shop.png',
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Product7[0].title,
                              ),
                              Text(
                                Product7[0].title2,
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_left),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).showBottomSheet<void>(
                        (BuildContext context) {
                          return Container(
                            width: double.infinity,
                            height: size.height * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              color: Colors.lightBlueAccent,
                            ),
                            child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                final data = Product7[1];
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/shop.png',
                                        width: 48,
                                        height: 48,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        data.title,
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                      // Text(
                                      //   'فعال',
                                      //   style: TextStyle(color: Colors.black45),
                                      // ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title3,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title4,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title5,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      '${data.price}'
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title6,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title7
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 26, 3),
                                            child: Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title8,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title9
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: size.width * 0.9,
                                        height: size.height * 0.04,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Get.to(
                                              Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: Personnel(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'لیست پرسنل',
                                            style: TextStyle(
                                                fontFamily: 'IransansDn'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/shop.png',
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Product7[1].title,
                              ),
                              Text(
                                Product7[1].title2,
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_left),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).showBottomSheet<void>(
                        (BuildContext context) {
                          return Container(
                            width: double.infinity,
                            height: size.height * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              color: Colors.lightBlueAccent,
                            ),
                            child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                final data = Product7[2];
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/shop.png',
                                        width: 48,
                                        height: 48,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        data.title,
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                      // Text(
                                      //   'فعال',
                                      //   style: TextStyle(color: Colors.black45),
                                      // ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title3,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title4,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title5,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      '${data.price}'
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 24, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: BorderDirectional(
                                                  bottom: BorderSide(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title6,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title7
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                24, 3, 26, 3),
                                            child: Container(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      data.title8,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    Text(
                                                      data.title9
                                                          .toPersianDigit(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: size.width * 0.9,
                                        height: size.height * 0.04,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Get.to(
                                              Directionality(
                                                textDirection:
                                                    TextDirection.rtl,
                                                child: Personnel(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'لیست پرسنل',
                                            style: TextStyle(
                                                fontFamily: 'IransansDn'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/shop.png',
                            width: 48,
                            height: 48,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Product7[2].title,
                              ),
                              Text(
                                Product7[2].title2,
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_left),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          width: size.width,
          height: size.height * 0.07,
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //  Icon(Icons.keyboard_arrow_right),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Directionality(
                        textDirection: TextDirection.rtl,
                        child: Settings(),
                      ),
                    ),
                  );
                },
                icon: Icon(Icons.keyboard_arrow_right),
              ),
              Text('فروشگاه های من'),
              Icon(Icons.question_mark_rounded),
            ],
          ),
        ),
      ],
    );
  }
}
