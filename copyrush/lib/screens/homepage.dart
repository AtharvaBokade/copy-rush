import 'package:copyrush/widgets/header_widget.dart';
import 'package:copyrush/widgets/shops_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Flexible(
          child: Column(
            children: [
              HeaderWidget(),
              SizedBox(
                height: 30,
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Shops nearby you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ShopsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
