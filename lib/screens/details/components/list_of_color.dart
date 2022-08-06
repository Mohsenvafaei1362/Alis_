import 'package:flutter/material.dart';
import 'package:alis/constants.dart';
import 'package:alis/screens/details/components/color_dots.dart';

class ListOfColor extends StatelessWidget {
  const ListOfColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
            isSelected: true,
          ),
          ColorDot(
            fillColor: kPrimaryColor,
            isSelected: true,
          ),
        ],
      ),
    );
  }
}

