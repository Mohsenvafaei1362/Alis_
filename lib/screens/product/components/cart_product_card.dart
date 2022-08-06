import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/products.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    Key? key,
    required this.size,
    required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: SizedBox(
        height: 136,
        width: size.width - 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 4,
              ),
              decoration: const BoxDecoration(
                // color: kBackgroundColor,
                // color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(22),
                  topLeft: Radius.circular(22),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    'اضافه کردن به سبد',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 8,
                      color: Colors.black45,
                    ),
                  ),
                  Icon(Icons.add_shopping_cart_sharp ,
                   size: 20,
                   color: Colors.green,
                   ),
                  // Icon(Icons.add_circle_outline_rounded ,
                  //  size: 30,
                  //  color: Colors.green,
                  //  ),
                  // Text(
                  //   '0',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 17,
                  //     color: Colors.black45,
                  //   ),
                  // ),
                  // Icon(Icons.remove_circle_outline_rounded ,
                  //  size: 30,
                  //  color: Colors.blue,
                  //  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
