import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Operation_Api {
  final int id;
  final int price;
  final String title;
  final Icon icon;
  final Color color;

  const Operation_Api({
    required this.id,
    required this.title,
    required this.icon,
    required this.price,
    required this.color,
  });

  static const List<Operation_Api> operations = [
    Operation_Api(
      id: 1,
      title: 'خرید از فروشگاه',
      icon: Icon(CupertinoIcons.cart),
      price: 12000,
      color: Colors.transparent,
    ),
    Operation_Api(
      id: 2,
      title: 'اینترنت',
      icon: Icon(Icons.public),
      price: 360000,
      color: Colors.transparent,
    ),
    Operation_Api(
      id: 3,
      title: 'قبض',
      icon: Icon(CupertinoIcons.doc_text_fill),
      price: 540000,
      color: Colors.transparent,
    ),
    Operation_Api(
      id: 4,
      title: 'شارژ حساب',
      icon: Icon(
        CupertinoIcons.creditcard,
        color: Colors.green,
      ),
      price: 40000,
      color: Colors.green,
    ),
  ];
}
