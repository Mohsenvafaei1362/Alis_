import 'package:flutter/material.dart';

class Invitation extends StatelessWidget {
  const Invitation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/send2.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      // color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.question_mark_rounded,
                            color: Colors.white,
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 25, 8, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'دعوت از دوستان',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        '10 نفر از دوستان خود را به عالیس دعوت کنید و برای هر باز کردن حساب موفق 30 امتیاز هدیه بگیرید',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              // Icon(Icons.volunteer_activism),
                              Image.asset(
                                'assets/images/7978 (1).png',
                                width: 48,
                                height: 48,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'هدیه به دوستان',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              // Icon(Icons.how_to_reg_rounded),
                              Image.asset(
                                'assets/images/7978 (2).png',
                                width: 48,
                                height: 48,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'دریافت امتیاز',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Container(
                        width: size.width / 2,
                        height: 35,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.black),
                            gradient: RadialGradient(
                            radius: 5,
                            colors: [
                              Color(0xffeef2f3),
                              Color(0xff005aa7),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('کد دعوت'),
                            Text('MTGPXY'),
                            Icon(Icons.copy),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        width: size.width,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'ارسال دعوت نامه',
                            style: TextStyle(
                                fontSize: 11, fontFamily: 'IransansDn'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
