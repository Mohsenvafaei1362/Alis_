import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buy4 extends StatelessWidget {
  const Buy4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.04,
              padding: EdgeInsets.fromLTRB(0, 5, 20, 5),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('پیگیری سفارش'),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(CupertinoIcons.arrow_right),
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.amber[200],
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.15,
                    child: Image.asset('assets/images/67.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('سفارش شما در انتظار پرداخت می باشد')
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.15,
                    child: Image.asset('assets/images/70.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('سفارش شما در حال پردازش می باشد')
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.15,
                    child: Image.asset('assets/images/69.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('سفارش شما تحویل شده ')
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.15,
                    child: Image.asset('assets/images/68.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('سفارش شما لغو شده ')
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
