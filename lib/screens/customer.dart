import 'package:alis/models/pepole.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:alis/screens/product/components/introducing_ghole.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Customer_Club extends StatelessWidget {
  Customer_Club({Key? key}) : super(key: key);
  // final story = AppDatabase.stories;
  double iconSize = 40;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final rankPepole = Pepole.pepoles;

    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: CurvedNavigationBar(
        //   backgroundColor: Colors.white,
        //   items: <Widget>[
        //     Icon(Icons.playlist_add_check_circle_outlined, size: 20),
        //     Icon(Icons.store, size: 20),
        //     Icon(Icons.home_sharp, size: 20),
        //     Icon(Icons.attractions_sharp, size: 20),
        //     Icon(Icons.dashboard_customize_rounded, size: 20),
        //   ],
        //   onTap: (index) {
        //     //Handle button tap
        //   },
        // ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32, 32, 0),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Body(),
                                ),
                              ),
                            );
                          },
                          child: Icon(Icons.keyboard_arrow_right)),
                      SizedBox(
                        width: 15,
                      ),
                      Text('باشگاه مشتریان'),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 32, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            // Icon(
                            //   Icons.account_circle,
                            //   size: 50,
                            // ),
                            ClipOval(
                              child: Image.asset(
                                'assets/icons/user.png',
                                height: 60,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('امتیاز'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '0'.toPersianDigit(),
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      // Image.asset(
                      //   'assets/images/10.jpg',
                      //   height: 100,
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 55, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'رتبه ها',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                  child: Container(
                    height: size.height / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/7773.jpg',
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: size.width * 0.1,
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'نام کاربری',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'رتبه',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'امتیاز',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.7,
                          height: size.height / 8,
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
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ClipOval(
                                      child: Image.asset(
                                        '${data.image}',
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      width: size.width * 0.27,
                                      child: Text(
                                        data.name,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      width: size.width * 0.1,
                                      child: Text(
                                        '${data.rank}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '${data.score}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),

                        // Ranking(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 12, 32, 0),
                  child: Container(
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/777.png',
                        ),
                      ),
                      // color: Colors.red,
                      // backgroundBlendMode: Image.asset('name'),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '0'.toPersianDigit(),
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 30),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'امتیاز',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/target.png',
                              height: 70,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/medal.png',
                                    height: 45,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'عادی',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('قله:', style: TextStyle(color: Colors.black45)),
                          Text(
                            'سهند - سطح 5'.toPersianDigit(),
                            style: TextStyle(color: Colors.black45),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('مجموع ریال:',
                              style: TextStyle(color: Colors.black45)),
                          Text('33,494'.toPersianDigit(),
                              style: TextStyle(color: Colors.black45)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('مجموع ریال کسب شده امروز:',
                              style: TextStyle(color: Colors.black45)),
                          Text('0'.toPersianDigit(),
                              style: TextStyle(color: Colors.black45)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('مجموع امتیاز:',
                              style: TextStyle(color: Colors.black45)),
                          Text('26,569'.toPersianDigit(),
                              style: TextStyle(color: Colors.black45)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('مجموع امتیاز کسب شده امروز:',
                              style: TextStyle(color: Colors.black45)),
                          Text('0'.toPersianDigit(),
                              style: TextStyle(color: Colors.black45)),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width / 2.5,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'وام های قرض الحسنه',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 2.5,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'بسته های اعتباری',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // Get.to(
                          //   Directionality(
                          //     textDirection: TextDirection.rtl,
                          //     child: Introducing_Club(),
                          //   ),
                          // );
                        },
                        child: Container(
                          width: size.width / 2.5,
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'آموزش',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 2.5,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'مسابقات',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Introducing_Ghole(),
                                    )),
                          );
                        },
                        child: Container(
                          width: size.width * 0.8,
                          height: size.height * 0.05,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'مسیر پیشرفت',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                SizedBox(
                  width: size.width * 0.9,
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'تبدیل امتیاز به وجه',
                      style: TextStyle(fontFamily: 'IransansDn'),
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                //   child: Container(
                //     width: size.width,
                //     // height: 270,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Color.fromARGB(255, 230, 228, 228),
                //     ),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         SizedBox(
                //           height: 40,
                //         ),
                //         Text('پرداخت قطعی شما در 0 روز گذشته'.toPersianDigit()),
                //         SizedBox(
                //           height: 30,
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Text('0 ریال'.toPersianDigit()),
                //             SizedBox(
                //               width: 20,
                //             ),
                //             Text(
                //               '0 امتیاز'.toPersianDigit(),
                //               style: TextStyle(
                //                   color: Colors.red,
                //                   fontWeight: FontWeight.bold),
                //             ),
                //           ],
                //         ),
                //         SizedBox(
                //           height: 30,
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Icon(Icons.date_range),
                //             Text('مهلت رسیدن به سطح برنزی'),
                //             Text(
                //               '30 روز'.toPersianDigit(),
                //               style: TextStyle(fontWeight: FontWeight.bold),
                //             ),
                //           ],
                //         ),
                //         const SizedBox(height: 30),
                //         Padding(
                //           padding: const EdgeInsets.all(32),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.end,
                //             children: [
                //               Text(
                //                 'بیشتر ...',
                //                 style: TextStyle(
                //                     color: Colors.red,
                //                     fontWeight: FontWeight.bold),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),

                // Container(
                //   height: size.height,
                //   child: GridView.builder(
                //       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                //         maxCrossAxisExtent: 200,
                //         childAspectRatio: 1 / 1,
                //         crossAxisSpacing: 20,
                //         mainAxisSpacing: 20,
                //       ),
                //       itemCount: 6,
                //       itemBuilder: (context, index) {
                //         final data = story[index];
                //         return Container(
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(20),
                //             color: Colors.red,
                //           ),
                //           child: SvgPicture.asset(
                //             'assets/icons/${data.imageFileName}',
                //           ),
                //         );
                //       }),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Ranking extends StatelessWidget {
  const Ranking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rankPepole = Pepole.pepoles;
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          final data = rankPepole[index];
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image.asset('assets/stories/${data.image}'),
              Text(
                data.name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              // Text(
              //   '${data.score}',
              //   style: TextStyle(
              //     fontSize: 14,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black38,
              //   ),
              // ),
              // Text(
              //   '${data.rank}',
              //   style: TextStyle(
              //     fontSize: 14,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black38,
              //   ),
              // ),
            ],
          );
        },
      ),
      // RowRanking(name: name, image: image, rank: rank, score: score),
    );
  }
}

class RowRanking extends StatelessWidget {
  const RowRanking({
    Key? key,
    required this.name,
    required this.image,
    required this.rank,
    required this.score,
  }) : super(key: key);
  final String name, image;
  final int rank, score;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/stories/$image'),
        Text(
          name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
        Text(
          '${score}',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
        Text(
          '${rank}',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}
