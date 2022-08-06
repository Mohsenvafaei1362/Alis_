import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/products.dart';

class PriceProductCard extends StatelessWidget {
  const PriceProductCard({
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
      left: 0,
      child: SizedBox(
        height: 136,
        width: size.width - 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding),
              child: Text(
                product.title,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / 4,
              ),
              decoration: const BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
              ),
              child: Text(
                "\ریال ${product.price}",
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
