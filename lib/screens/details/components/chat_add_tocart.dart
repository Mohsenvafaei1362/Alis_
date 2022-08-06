import 'package:flutter/material.dart';
import 'package:alis/constants.dart';
import 'package:persian_utils/persian_utils.dart';

import '../../../models/products.dart';

class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(
        kDefaultPadding,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFcbF1E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Text(
            '\ریال ${product.price}'.toPersianNumbers(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: kSecondaryColor,
            ),
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Container(
            width: size.width * 0.1,
            height: size.height * 0.033,
            decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.circular(7),
            ),
            child: Center(
              child: Text(
                '10%'.toPersianNumbers(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),
          Text(
            'اضافه کردن به سبد خرید',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 8,
              color: Colors.black45,
            ),
          ),
          Icon(
            Icons.add_shopping_cart_sharp,
            size: 30,
            color: Colors.green,
          ),
          // Icon(
          //   Icons.add_circle_outline_rounded,
          //   size: 30,
          //   color: Colors.green,
          // ),
          // SizedBox(width: 20,),
          // Text(
          //   '0',
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 17,
          //     color: Colors.black45,
          //   ),
          // ),
          // SizedBox(width: 20,),
          // Icon(
          //   Icons.remove_circle_outline_rounded,
          //   size: 30,
          //   color: Colors.blue,
          // ),
        ],
      ),
    );
  }
}
