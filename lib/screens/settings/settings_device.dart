import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/material.dart';

class Settings_Device extends StatelessWidget {
  const Settings_Device({Key? key}) : super(key: key);

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
                              child: Settings(),
                            ),
                          ),
                        );
                      },
                      child: Icon(Icons.keyboard_arrow_right),
                    ),
                    Text('دستگاه های من'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  'دستگاه فعلی',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Device(),
            ],
          ),
        ),
      ),
    );
  }
}

class Device extends StatelessWidget {
  const Device({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(32),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showBottomSheet<void>(
            (BuildContext context) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.lightBlueAccent,
                ),
                height: size.height / 2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/android.png',
                        width: 48,
                        height: 48,
                      ),
                      Text(
                        'Galaxy A20',
                        style: TextStyle(color: Colors.black45),
                      ),
                      Text(
                        'Android 11.0.0',
                        style: TextStyle(color: Colors.black45),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                            child: Container(
                              decoration: BoxDecoration(
                                border: BorderDirectional(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'آخرین ورود',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      'آنلاین',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                            child: Container(
                              decoration: BoxDecoration(
                                border: BorderDirectional(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'اولین ورود',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      '1401/04/25',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                            child: Container(
                              decoration: BoxDecoration(
                                border: BorderDirectional(
                                  bottom: BorderSide(color: Colors.white),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'نسخه عالیس',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      '0.0.1',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 8, 26, 8),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'آدرس IP',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      '5.125.228.53',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          child: Row(
            children: [
              Image.asset(
                'assets/images/android.png',
                width: 48,
                height: 48,
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Galaxy A20'),
                  Text(
                    'آنلاین',
                    style: TextStyle(color: Colors.blue[200]),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.keyboard_arrow_left),
            ],
          ),
        ),
      ),
    );
  }
}
