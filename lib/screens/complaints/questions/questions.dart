import 'package:alis/screens/complaints/complaint.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:flutter/material.dart';

import '../../../models/data_questions.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final product2 = AllProducts2.products2;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black26,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                child: Container(
                  width: size.width,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('سوالات پرتکرار'),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                  itemCount: product2.length,
                  itemBuilder: (context, index) {
                    final data = product2[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(color: Colors.black38),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(data.title),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
