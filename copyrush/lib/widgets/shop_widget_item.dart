import 'package:flutter/material.dart';

class ShopWidgetItem extends StatelessWidget {
  const ShopWidgetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    child: Text("Shop Info"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
