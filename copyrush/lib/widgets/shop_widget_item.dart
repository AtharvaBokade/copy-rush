import 'package:copyrush/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ShopWidgetItem extends StatelessWidget {
  const ShopWidgetItem({super.key, required this.shop});
  final Shop shop;

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
                    height: 100,
                    width: 85,
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9),
                        topLeft: Radius.circular(9),
                      ),
                      child: Stack(
                        children: [
                          FadeInImage(
                            height: 100,
                            width: double.infinity,
                            placeholder: MemoryImage(kTransparentImage),
                            image: NetworkImage(shop.imageLink),
                            fit: BoxFit.fill,
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(0, 28, 27, 27)
                                      .withOpacity(0.1),
                                  Color.fromARGB(0, 13, 13, 13).withOpacity(1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.bottomCenter,
                            padding: EdgeInsets.only(bottom: 7),
                            child: Text(
                              shop.offer,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    child: Text(
                      shop.shopName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
