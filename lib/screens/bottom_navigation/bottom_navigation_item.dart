import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem(
      {Key? key,
      required this.iconFileName,
      required this.activeIconFileName,
      required this.title,
      required this.press})
      : super(key: key);
  final String iconFileName, activeIconFileName, title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: press,
          child: Column(
            children: [
              Image.asset(
                'assets/icons/$iconFileName',
                width: 20,
              ),
              SizedBox(
                height: 4,
              ),
              Text(title),
            ],
          ),
        ),
      ],
    );
  }
}
