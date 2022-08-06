import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsBox extends StatelessWidget {
  const IconsBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/linkedin.svg',
          width: 20,
        ),
        const SizedBox(
          width: 15,
        ),
        SvgPicture.asset(
          'assets/icons/whatsapp.svg',
          width: 20,
        ),
        const SizedBox(
          width: 15,
        ),
        SvgPicture.asset(
          'assets/icons/instagram.svg',
          width: 20,
        ),
      ],
    );
  }
}
