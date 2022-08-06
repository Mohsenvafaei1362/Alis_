import 'package:flutter/material.dart';

import '../../constants.dart';

class ButtonBox extends StatelessWidget {
  const ButtonBox({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        // Icon(
        //     Icons.fingerprint,
        //     size: 40,
        //     color: Colors.red,
        //   ),
        Container(
          width: size.width / 4,
          height: 50,
          decoration: BoxDecoration(
            // color: kPrimaryColor.withOpacity(0.6),
            borderRadius: BorderRadius.circular(22),
          ),
          // height: 60,
          margin: EdgeInsets.fromLTRB(20, 5, 0, 5),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 4,
          ),
          child: Icon(
            Icons.fingerprint,
            size: 40,
            color: Colors.red,
          ),
        ),

        Container(
          width: size.width / 1.8,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xff17B978),
            borderRadius: BorderRadius.circular(22),
          ),
          // height: 60,
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 4,
          ),

          child: Center(
            child: GestureDetector(
              onTap: press,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
