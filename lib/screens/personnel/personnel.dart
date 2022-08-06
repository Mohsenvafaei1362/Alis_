import 'package:alis/models/data_settings_store.dart';
import 'package:alis/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Personnel extends StatefulWidget {
  @override
  State<Personnel> createState() => _PersonnelState();
}

class _PersonnelState extends State<Personnel> {
  // const Personnel({Key? key}) : super(key: key);
  final Product7 = AllPersonnelShop.personnelShop;

  final List<String> items = [
    'فروشگاه طالقانی',
    'فروشگاه عبادی',
    'فروشگاه طبرسی',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: AlertDialog(
                    title: Text('اضافه کردن پرسنل جدید'),
                    actions: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'IransansDn',
                              fontSize: 10,
                              color: Colors.blue),
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            labelText: 'نام و نام خانوادگی',

                            //
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'IransansDn',
                              fontSize: 10,
                              color: Colors.blue),
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            labelText: 'کد ملی',

                            //
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          style: TextStyle(
                              fontFamily: 'IransansDn',
                              fontSize: 10,
                              color: Colors.blue),
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            labelText: 'شماره تماس',

                            //
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: Text(
                            'انتخاب فروشگاه',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                              fontFamily: 'IransansDn',
                            ),
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          buttonHeight: 40,
                          buttonWidth: 140,
                          itemHeight: 40,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'ذخیره اطلاعات',
                          style: TextStyle(fontFamily: 'IransansDn'),
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    Text('پرسنل فروشگاه'),
                    Icon(Icons.question_mark_rounded),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'توجه: ',
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        ),
                        Text(
                          'افرادی که در این لیست اضافه می شوند می توانند \n کالای خریداری شده توسط شما را تحویل گیرند.',
                          style: TextStyle(fontSize: 10, color: Colors.black45),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 12, 0),
                      child: Text('لیست پرسنل فروشگاه'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.height,
                child: ListView.builder(
                  itemCount: Product7.length,
                  itemBuilder: (context, index) {
                    final data = Product7[index];

                    return Padding(
                      padding: const EdgeInsets.all(12),
                      child: InkWell(
                        onTap: () {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.INFO,
                            animType: AnimType.BOTTOMSLIDE,
                            title: data.title,
                            desc: data.title2,
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                            btnOkText: 'ویرایش',
                            buttonsTextStyle:
                                TextStyle(fontFamily: 'IransansDn'),
                            btnCancelText: 'حذف',
                            customHeader: Image.asset('assets/icons/user.png'),
                          )..show();
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Image.asset(
                                data.image,
                                width: 48,
                                height: 48,
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(data.title),
                                  Text(
                                    data.title2,
                                    style: TextStyle(color: Colors.blue[200]),
                                  ),
                                ],
                              ),
                              Spacer(),
                              // Icon(Icons.mode_edit_outlined),
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
        ),
      ),
    );
  }
}
