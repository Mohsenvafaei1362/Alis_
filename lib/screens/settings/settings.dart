import 'package:alis/models/data_setting.dart';
import 'package:alis/screens/product/components/body.dart';
import 'package:alis/screens/settings/settings_about.dart';
import 'package:alis/screens/settings/settings_atm.dart';
import 'package:alis/screens/settings/settings_colleague.dart';
import 'package:alis/screens/settings/settings_edit_store.dart';
import 'package:alis/screens/settings/settings_store.dart';

import 'package:flutter/material.dart';

import '../../models/data_setting.dart';
import 'settings_device.dart';
import 'settings_pass.dart';

class Settings extends StatelessWidget {
  // const Settings({Key? key}) : super(key: key);
  var id = [
    "title 1",
    "title 2",
    "title 3",
    "title 4",
    "title 5",
  ];

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final Product4 = AllProducts4.products4;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Directionality(
                                textDirection: TextDirection.rtl,
                                child: Body(),
                              ),
                            ),
                          );
                        },
                        child: Icon(Icons.keyboard_arrow_right)),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 120,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Text(
                      //   'تنظیمات',
                      //   style: TextStyle(fontSize: 14),
                      // ),
                      Image.asset(
                        'assets/icons/user.png',
                        width: 68,
                        height: 68,
                      ),
                      Text('فرهاد رضوانی'),
                      Text(
                        'کاربر عادی',
                        style: TextStyle(color: Colors.black45, fontSize: 11),
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'تنظیمات',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icons/lock.png',
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text('ورود با اثر انگشت'),
                                Spacer(),
                                // Icon(Icons.toggle_on_outlined,
                                //     color: Colors.black45),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                  },
                                  // activeTrackColor: Colors.blue,
                                  activeColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.58,

                          // decoration: BoxDecoration(
                          //   // color: Colors.red,
                          //   borderRadius: BorderRadius.circular(10),
                          // ),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: Product4.length,
                            itemBuilder: (context, index) {
                              final data = Product4[index];
                              return Padding(
                                padding: const EdgeInsets.all(16),
                                child: InkWell(
                                  onTap: () {
                                    if (data.id == 3)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Settings_Device(),
                                          ),
                                        ),
                                      );
                                    else if (data.id == 1)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Settings_pass(),
                                          ),
                                        ),
                                      );
                                    else if (data.id == 4)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Settings_Store(),
                                          ),
                                        ),
                                      );
                                    else if (data.id == 6)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Settings_Edit_Store(),
                                          ),
                                        ),
                                      );
                                    else if (data.id == 8)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Settings_About(),
                                          ),
                                        ),
                                      );
                                    else if (data.id == 7)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Settings_ATM(),
                                          ),
                                        ),
                                      );
                                    else if (data.id == 5)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: Settings_Colleague(),
                                          ),
                                        ),
                                      );
                                  },
                                  child: Container(
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          data.image,
                                          width: 30,
                                          height: 30,
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Text(data.title),
                                        Spacer(),
                                        Icon(Icons.keyboard_arrow_left,
                                            color: Colors.black45),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        'Version 0.0.1',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
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

void setState(Null Function() param0) {}
