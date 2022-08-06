import 'package:alis/screens/complaints/questions/questions.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:alis/screens/settings/settings.dart';
import 'package:alis/screens/support/chatpage.dart';
import 'package:alis/screens/support/message.dart';
import 'package:alis/screens/support/support.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class Support_Message extends StatelessWidget {
  const Support_Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.keyboard_arrow_right),
                      ),
                      Text('مرکز پشتیبانی'),
                      Icon(Icons.question_mark_rounded),
                    ],
                  ),
                ),
                DefaultTabController(
                  length: 2, // length of tabs
                  initialIndex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          labelStyle: TextStyle(fontFamily: 'IransansDn'),
                          labelColor: Colors.green,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: 'تیکت جدید'),
                            Tab(text: 'لیست تیکت ها'),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.84, //height of TabBarView
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: TabBarView(
                          children: <Widget>[
                            Support(),
                            Message(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
