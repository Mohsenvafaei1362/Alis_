import 'package:flutter/material.dart';
import 'package:alis/models/users.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../wallet.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final user = AllUsers.users;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.89,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'اطلاعات حساب کاربری',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 25),
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(Icons.exit_to_app)),
                            ]),
                      ),
                    ),
                    Container(
                      height: 80,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Color.fromARGB(255, 99, 98, 98),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' امتیاز شما ${user[0].score}'.toPersianDigit(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          ClipOval(
                            child: Image.asset(
                              'assets/icons/user.png',
                              width: 65,
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
                              'assets/icons/tom.png',
                              width: 24,
                              height: 24,
                            ),
                            Text('0'),
                            Spacer(),
                            Text('موجودی حساب'),
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/icons/wallet.png',
                              width: 32,
                              height: 32,
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'نام :  ${user[1].fname}',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'نام خانوادگی :  ${user[1].lname}',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            ' ${user[0].email} : ایمیل',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'شماره تلفن :  ${user[0].phone}'.toPersianDigit(),
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
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
          ),
        ),
      ),
    );
  }
}
