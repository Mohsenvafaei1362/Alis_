import 'package:flutter/material.dart';
import 'package:alis/constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key? key,
    required this.size, required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding /4,
      ),
      height: size.width * 0.9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.5,
            width: size.width ,
            decoration: BoxDecoration(
              color: Colors.white,
              // shape: BoxShape.circle,
            ),
          ),
          // ClipOval(
            // child: 
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                height: size.width * 0.5,
                width: size.width ,
                fit: BoxFit.cover,
              ),
            ),
          // ),
        ],
      ),
    );
  }
}
