import 'package:flutter/material.dart';
import 'package:flutter_app1/models/catalog.dart';
import 'package:flutter_app1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetail extends StatelessWidget {
  final Item catalog;

  const HomeDetail({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
         alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  backgroundColor: MaterialStateProperty.all(Colors.cyan)),
              child: "Buy".text.xl.bold.make(),
            ).wh(100, 50),
          ],
        ).p24(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(MyTheme.darkBluishColor)
                          .bold
                          .make(),
                      catalog.desc.text.make(),
                      10.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
