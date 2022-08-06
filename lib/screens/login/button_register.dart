import 'package:flutter/material.dart';

import '../../constants.dart';

class ButtonRegister extends StatelessWidget {
  const ButtonRegister({
    Key? key,
    required this.text,
    required this.press,
    required this.onChanged,
  }) : super(key: key);
  final String text;
  final Function() press;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1,
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
      child: GestureDetector(
        onTap: press,
        child: Center(
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
    );
  }
}
