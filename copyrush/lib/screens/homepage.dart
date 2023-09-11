import 'package:copyrush/widgets/header_widget.dart';
import 'package:copyrush/widgets/shops_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(),
            SizedBox(
              height: 35,
            ),
            ShopsWidget(),
          ],
        ),
      ),
    );
  }
}
