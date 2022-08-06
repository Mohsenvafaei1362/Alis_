import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyShop extends StatelessWidget {
  const BuyShop({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * 4),
        height: size.height * 0.07,
        decoration: BoxDecoration(
          color: Color.fromARGB(230, 96, 167, 119),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              ' : کیف پول',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            Icon(
              Icons.card_travel_sharp,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
