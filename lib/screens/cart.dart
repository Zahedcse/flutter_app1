import 'package:flutter/material.dart';
import 'package:flutter_app1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.bold.xl4.color(MyTheme.darkBluishColor).make(),
        centerTitle: true,
      ),
    );
  }
}
