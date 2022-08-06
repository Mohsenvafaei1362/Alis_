import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var bool = false;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height,
              color: Colors.amber,
              child: ListView(
                children: [
                  ExpansionTile(
                    title: Text('چگونه عکس روفایل را تغییر دهیم؟'),
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                      'آدرس بدون فیلتر: TikNet.Best | سایت تیک نت وی پی ان خرید VPN پرسرعت اختصاصی| خرید vpn برای ios خرید ساکس تلگرام,خرید vpn اندروید,خرید پراکسی تلگرام ,خرید وی '),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('چگونه عکس روفایل را تغییر دهیم؟'),
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                      'آدرس بدون فیلتر: TikNet.Best | سایت تیک نت وی پی ان خرید VPN پرسرعت اختصاصی| خرید vpn برای ios خرید ساکس تلگرام,خرید vpn اندروید,خرید پراکسی تلگرام ,خرید وی '),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
