import 'package:flutter/material.dart';
import 'package:alis/constants.dart';
import 'package:alis/screens/details/components/body.dart';

import '../../models/products.dart';

class DetailesScreen extends StatelessWidget {
  // const DetailesScreen({Key? key}) : super(key: key);
  final Product product;

  const DetailesScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      // appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        color: Colors.black45,
        padding: EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
      centerTitle: false,
      title: Text(
        'بازگشت',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        IconButton(
          color: Colors.black45,
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border_outlined,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
