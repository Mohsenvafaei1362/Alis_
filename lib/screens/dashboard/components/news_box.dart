import 'package:flutter/material.dart';

class NewsBox extends StatelessWidget {
  const NewsBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'عالیس مسابقه بزرگ عکاسی برگزار می‌کند',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

