import 'package:flutter/material.dart';

import '../../constants.dart';

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
    Key? key,
    required this.onChanged, required this.hinttext, required this.icon,
  }) : super(key: key);

  final ValueChanged onChanged;
  final String hinttext;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 123, 183, 187).withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: icon,
            hintText: hinttext,
            hintStyle: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
