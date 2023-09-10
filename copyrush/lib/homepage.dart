import 'package:flutter/material.dart';
import 'color.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: Row(children: [
              Icon(
                Icons.location_pin,
                size: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Data",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "data",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 35,
              ),
              Container(
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: Icon(Icons.person))
            ]),
          )
        ],
      ),
    );
  }
}
