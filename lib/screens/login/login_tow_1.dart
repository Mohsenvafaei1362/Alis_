import 'package:alis/screens/login/login_tree.dart';
import 'package:flutter/material.dart';

class Login_Tow_1 extends StatelessWidget {
  const Login_Tow_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height / 2.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Capture101.JPG'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'نقش خود در خانواده عالیس را انتخاب فرمایید',
                        style: TextStyle(color: Colors.blue),
                      ),
                      // Icon(Icons.access_time_filled),
                    ],
                  ),
                ),
              ),
              Naghsh(
                size: size,
                text1: 'ویزیتور',
                text2: 'اطلاعات بیشتر',
                image: 'assets/images/businessman (4).png',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Directionality(
                        textDirection: TextDirection.rtl,
                        child: LoginTree(),
                        // child:Login(onChanged: onChanged),
                      ),
                    ),
                  );
                },
              ),
              Naghsh(
                size: size,
                text1: 'فروشنده',
                text2: 'اطلاعات بیشتر',
                image: 'assets/images/progress.png',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Directionality(
                        textDirection: TextDirection.rtl,
                        child: LoginTree(),
                        // child:Login(onChanged: onChanged),
                      ),
                    ),
                  );
                },
              ),
              Naghsh(
                size: size,
                text1: 'موزع',
                text2: 'اطلاعات بیشتر',
                image: 'assets/images/businessman (3).png',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Directionality(
                        textDirection: TextDirection.rtl,
                        child: LoginTree(),
                        // child:Login(onChanged: onChanged),
                      ),
                    ),
                  );
                },
              ),
              // Naghsh(
              //   size: size,
              //   text1: 'راهبر',
              //   text2: 'اطلاعات بیشتر',
              //   image: 'assets/images/businessman.png',
              //   press: (){
              //     Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                 builder: (context) => Directionality(
              //                   textDirection: TextDirection.rtl,
              //                   child: LoginTree(),
              //                   // child:Login(onChanged: onChanged),
              //                 ),
              //               ),
              //             );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class Naghsh extends StatelessWidget {
  const Naghsh({
    Key? key,
    required this.size,
    required this.image,
    required this.text1,
    required this.text2,
    required this.press,
  }) : super(key: key);

  final Size size;
  final String image, text1, text2;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
      child: Container(
        width: size.width,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue[200],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipOval(
                    child: Image.asset(
                      image,
                      width: 68,
                      height: 68,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        text2,
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.white,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
