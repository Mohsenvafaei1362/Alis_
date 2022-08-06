import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
          width: size.width * 0.9,
          height: size.height * 0.06,
          child: FloatingActionButton.extended(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
            backgroundColor: Color(0xfffafafa),
            
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => FollowUp(),
              //   ),
              // );
            },
            label: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                    },
                    child: Center(
                      child: Container(
                        width: size.width ,
                        height: size.height * 0.06,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(

                            color:Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text('شارژ حساب',style: TextStyle(fontFamily: 'IransansDn'),),
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   width: size.width * 0.35,
                  //   height: size.height * 0.07,
                  //   // color: Color(0xffffa34d),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.end,
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.end,
                  //         children: [
                  //           Container(
                  //             height: 30,
                  //             width: 50,
                  //             padding: EdgeInsets.all(0),
                  //             decoration: BoxDecoration(
                  //                 color: Colors.red,
                  //                 borderRadius: BorderRadius.circular(10)),
                  //             child: Center(child: Text('20%')),
                  //           ),
                  //           SizedBox(
                  //             width: 5,
                  //           ),
                  //           Text(
                  //             '185000',
                  //             style: TextStyle(
                  //               color: Colors.black38,
                  //               decoration: TextDecoration.lineThrough,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       Text(
                  //         '152000 ریال',
                  //         style: TextStyle(
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
               
                ],
              ),
            ),
            // Text(
            //   'بازگشت به صفحه اصلی',
            //   style:
            //       TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            // ),
          ),
        ),
      body: SafeArea(child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_right)),
            SizedBox(width: 15,),
            Text('حساب'),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Container(width:size.width ,
          height: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Image.asset('assets/icons/wallet.png',width: 30,height: 30,),
              SizedBox(width: 20,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('موجودی حساب'),
                  Row(
                    children: [
                      Text('0'),
                    Image.asset('assets/icons/tom.png',width: 24,height: 24,)
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlueAccent,
                ),
                child: Center(child: Text('برداشت از حساب',style: TextStyle(color: Colors.white,fontSize: 10),),),),
            ],),
            
          ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('شارژ  حساب',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('مبلغ مورد نیاز خود را وارد نمایید یا از میان مبالغ پیشنهادی یک گزینه را انتخاب فرمایید',style: TextStyle(color: Colors.black45),),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(children: [
            Icon(Icons.history,color: Colors.black54,),
            SizedBox(width: 15,),
            Text('تاریخچه تراکنش ها',style: TextStyle(color: Colors.black45),),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Container(
            width: size.width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Icon(Icons.add),
              Text('مبلغ دلخواه شما'),
              Icon(CupertinoIcons.minus),
          ],
          ),
            ),
            ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width/3.8,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text('50,000 تومان'),
                ),
              ),
              Container(
                width: size.width/3.8,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text('100,000 تومان'),
                ),
              ),
              Container(
                width: size.width/3.8,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text('200,000 تومان'),
                ),
              ),
            ],
          ),
        ),
        
        // SizedBox(height: 20,),
        // SizedBox(
        //   width: size.width,
        //   height: 40,
        //   child: ElevatedButton(onPressed: (){}, child: Text('شارژ کیف پول'),
        //   ),
        //   ),
        
      ],
      ),
    ),
    ),
    );
  }
}