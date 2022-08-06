import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Discount extends StatelessWidget {
  const Discount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_right_alt_sharp),
                    ),
                    SizedBox(width: 20),
                    Text('کدهای تخفیف من'),
                  ],
                ),
              ),
              Divider(
                height: 5,
              ),
              SizedBox(
                width: size.width,
                child: Image.asset(
                  'assets/images/Alis-Product.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 35, 12, 0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'عالیس',
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'اعتبار : ',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'تا چهارشنبه 25 تیر'.toPersianDigit(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          Container(
                            width: 120,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'کپی کنید',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                '30,000'.toPersianDigit(),
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'تومان',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'حداقل',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '800000'.toPersianDigit(),
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'ریال خرید',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Container(
                            width: 120,
                            height: 35,
                            child: Center(
                              child: Text(
                                'ABF5B'.toPersianDigit(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
