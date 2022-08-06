import 'package:alis/screens/followup/endFollowup.dart';
import 'package:flutter/material.dart';
import 'package:status_stepper/status_stepper.dart';

class FollowUp extends StatelessWidget {
  // const FollowUp({Key? key}) : super(key: key);
  final statuses = List.generate(
    3,
    (index) => SizedBox.square(
      dimension: 32,
      child: Center(child: Text('$index')),
    ),
  );

  int currentStep = 0;
  int curIndex = -1;
  int lastIndex = -1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: size.width * 0.9,
        height: size.height * 0.06,
        child: FloatingActionButton.extended(
          shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5)
     ),
          backgroundColor:  Color(0xff8bc34a),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EndFollowUp(),
              ),
            );
          },
          label: Text(
            'مرحله بعد',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'IransansDn'),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Image.asset('assets/images/32.jpg',width: size.width,height: size.height * 0.5,fit: BoxFit.fill,),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ': مشاهده مراحل ثبت نام',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text('مدارک شما در حال بررسی می باشد',style: TextStyle(color: Colors.black45,fontSize: 12),),
                        ],
                      ),
                      
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height/1.5,
                decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(image: AssetImage('assets/images/0504.JPG'),fit: BoxFit.cover,
                ),
              ),
              
              ),
              // SizedBox(
              //   height: 150,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: StatusStepper(
                  connectorCurve: Curves.easeIn,
                  itemCurve: Curves.easeOut,
                  activeColor: Colors.amber,
                  disabledColor: Colors.grey,
                  animationDuration: const Duration(milliseconds: 500),
                  children: statuses,
                  lastActiveIndex: lastIndex,
                  currentIndex: 1,
                  connectorThickness: 6,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'بازار یاب',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'واحد برنامه ریزی',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
