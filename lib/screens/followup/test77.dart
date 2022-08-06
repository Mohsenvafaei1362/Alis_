import 'package:flutter/material.dart';

class StepperPage extends StatelessWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: null,
      body: Container(
      height: size.height,
      width: size.width,
      color: Colors.grey,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
              // color: Colors.orange[100],
              ),
              child:Image.asset('assets/images/20.jpg',fit: BoxFit.cover,) ,
            ),
          ),
          Positioned(
            top: 150,
            left: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height:  MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width,
                        height: size.height,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                        ),
                        // padding: EdgeInsets.symmetric(
                        //     vertical: 30, horizontal: 20),
                        
                        margin: EdgeInsets.all(5),
                        child: Text(
                          'TEXT 1',
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
        ),
    );
  }
}