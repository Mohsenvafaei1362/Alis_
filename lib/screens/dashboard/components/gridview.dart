import 'package:flutter/material.dart';
import 'package:alis/screens/product/product_screen.dart';

import '../../../models/item_dashboard.dart';
import 'item_card.dart';

class GridViwe extends StatelessWidget {
  const GridViwe({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 35,
                  childAspectRatio: 1.1,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) => ItemCard(
                  itemIndex: index,
                  itemDashboard: items[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
