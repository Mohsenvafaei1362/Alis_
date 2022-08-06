import 'package:flutter/material.dart';
import 'package:alis/models/item_dashboard.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.press,
    required this.itemIndex,
    required this.itemDashboard,
  }) : super(key: key);

  final int itemIndex;
  final ItemDashboard itemDashboard;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        height: size.height * 0.5,
        width: size.width * 0.5,
        decoration: BoxDecoration(
          // color: Colors.amber,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SvgPicture.asset('assets/icons/buy.svg'),
              Image.asset(
                itemDashboard.image,
                width: 50,
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  itemDashboard.title,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
