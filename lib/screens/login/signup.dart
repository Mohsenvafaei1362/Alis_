import 'package:flutter/material.dart';
import 'package:alis/screens/login/button_register.dart';
import 'package:alis/screens/login/login.dart';

import 'button_box.dart';
import 'icons_box.dart';
import 'text_field_box.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;
  // final String hintText;
  // final Function() press;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   leading: IconButton(
      //     color: Colors.white,
      //     padding: EdgeInsets.only(left: kDefaultPadding),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) => Login(onChanged: onChanged)),
      //       );
      //     },
      //     icon: Icon(Icons.arrow_back),
      //   ),
      //   title: Text(
      //     'صفحه عضویت',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 20,
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: Column(
        children: [
          Container(
            height: 160,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Image.asset(
              'assets/images/logo.jfif',
              width: 150,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 201, 238, 250),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldBox(
                    onChanged: onChanged,
                    hinttext: 'نام کاربری',
                    icon: Icon(Icons.account_circle),
                  ),
                  TextFieldBox(
                    onChanged: onChanged,
                    hinttext: 'کلمه عبور',
                    icon: Icon(Icons.vpn_key_rounded),
                  ),
                  ButtonRegister(
                    text: 'ثبت اطلاعات',
                    press: () {},
                    onChanged: onChanged,
                  ),
                  ButtonBox(
                      text: 'ورود',
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(onChanged: onChanged),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 50,
                  ),
                  IconsBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
