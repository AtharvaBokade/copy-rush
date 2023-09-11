import 'package:copyrush/widgets/shop_widget_item.dart';
import 'package:flutter/material.dart';

class ShopsWidget extends StatelessWidget {
  const ShopsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: 210,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: (100 / 220),
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (index) {
          return ShopWidgetItem();
        }),
      ),
    );
  }
}
