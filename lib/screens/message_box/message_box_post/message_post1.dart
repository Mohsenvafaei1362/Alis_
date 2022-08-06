import 'package:alis/models/data_message_box.dart';
import 'package:flutter/material.dart';

class Message_Post1 extends StatelessWidget {
  const Message_Post1({Key? key, required this.product3}) : super(key: key);
  final Product3 product3;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                    ),
                    image: DecorationImage(image: AssetImage(product3.image))),
                child: Image.asset(product3.image),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product3.title,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      product3.title3,
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      product3.title2,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        width: size.width,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(product3.title4),
                              Icon(Icons.keyboard_arrow_left),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
