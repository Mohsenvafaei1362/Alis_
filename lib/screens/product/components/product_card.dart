import 'package:flutter/material.dart';
import 'package:alis/constants.dart';

import '../../../models/products.dart';
import 'cart_product_card.dart';
import 'price_product_card.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),
                  height: 120,
                  width: 160,
                  child: ClipOval(
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            CartProductCard(
              size: size,
              product: product,
            ),
            PriceProductCard(size: size, product: product),
          ],
        ),
      ),
    );
  }
}
