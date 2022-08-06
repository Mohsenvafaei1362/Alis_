import 'package:alis/drawer/navbar.dart';
import 'package:alis/models/data_message_box.dart';
import 'package:alis/screens/message_box/message_box_post/message_post1.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Message_Box extends StatelessWidget {
  const Message_Box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product3 = AllProducts3.products3;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Directionality(textDirection: TextDirection.rtl, child: Body())));
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  Text('صندوق پیام ها'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '(2 پیغام خوانده نشده)'.toPersianDigit(),
                    style: TextStyle(fontSize: 8),
                  )
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              child: ListView.builder(
                itemCount: product3.length,
                itemBuilder: (context, index) {
                  final data = product3[index];
                  return Padding(
                    padding: const EdgeInsets.all(12),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Directionality(
                              textDirection: TextDirection.rtl,
                              child: Message_Post1(
                                product3: product3[index],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                data.image,
                                width: 68,
                                height: 68,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  data.title,
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  data.title2,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black45),
                                ),
                                Text(
                                  data.title3,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black45),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
