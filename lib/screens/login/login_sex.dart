import 'package:alis/models/data_login_sex2.dart';
import 'package:alis/screens/login/login_four_1.dart';
import 'package:alis/screens/login/login_seven.dart';
import 'package:flutter/material.dart';

class Login_Sex extends StatelessWidget {
  const Login_Sex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Product6 = AllProducts6.products6;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   width: double.infinity,
            //   height: size.height / 3.5,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //       bottomLeft: Radius.circular(30),
            //       bottomRight: Radius.circular(30),
            //     ),
            //     // color: Colors.blue,
            //     image: DecorationImage(
            //       image: AssetImage('assets/images/987.jpg'),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            Container(
              width: size.width,
              height: size.height / 3.9,

              // color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 36, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'بارگزاری مدارک :',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'مدارک خواسته شده را با رعایت شفاف بودن و کامل بودن تصویر بارگزاری فرمایید ',
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'توجه:',
                      style: TextStyle(color: Colors.red, fontSize: 10),
                    ),
                    Text(
                      'دقت فرمایید در تصویر جزئیات اضافه نباشد و فقط تصویر مدارک ارسال شود',
                      style: TextStyle(fontSize: 10, color: Colors.black45),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Product6.length,
                itemBuilder: (contex, index) {
                  final data = Product6[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                    child: Container(
                      width: size.width / 1.2,
                      height: 100,
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            data.image,
                            width: 68,
                            height: 68,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data.title,
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 14),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'بارگزاری تصویر',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.06,
              margin: EdgeInsets.only(bottom: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (Contex) => Directionality(
                        textDirection: TextDirection.rtl,
                        child: LoginFour_1(),
                      ),
                    ),
                  );
                },
                child: Text(
                  'بعدی',
                  style: TextStyle(fontFamily: 'IransansDn'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
