import 'package:flutter/material.dart';
import 'package:alis/screens/login/button_register.dart';
import 'package:alis/screens/product/product_screen.dart';
import 'icons_box.dart';
import 'text_field_box.dart';

class Login extends StatelessWidget {
  const Login({Key? key, required this.onChanged}) : super(key: key);
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // drawer: NavBar(),
        backgroundColor: Colors.white,
        // appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background_2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  color: Color.fromARGB(70, 63, 241, 152),
                  //   borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(50),
                  //       topRight: Radius.circular(50)),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldBox(
                      onChanged: onChanged,
                      hinttext: 'نام و نام خانوادگی',
                      icon: Icon(Icons.account_circle),
                    ),
                    TextFieldBox(
                      onChanged: onChanged,
                      hinttext: 'تلفن همراه',
                      icon: Icon(Icons.phone),
                    ),
                    TextFieldBox(
                      onChanged: onChanged,
                      hinttext: 'کد ملی',
                      icon: Icon(Icons.vpn_key_rounded),
                    ),
                    TextFieldBox(
                      onChanged: onChanged,
                      hinttext: 'اسکن مدارک',
                      icon: Icon(Icons.copy_outlined),
                    ),
                    Row(
                      children: [
                        Container(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'موقعیت جغرافیایی',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ButtonRegister(
                      text: 'عضویت',
                      onChanged: onChanged,
                      press: () {
                        print('test');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    IconsBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
