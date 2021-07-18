import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
//import 'package:flutter_app1/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
//import 'package:flutter_app1/widgets/item_widget.dart';
import 'package:flutter_app1/widgets/themes.dart';
import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = 'codepur';
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("Assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

// class CatalogItem extends StatelessWidget {
//   final Item catalog;

//   const CatalogItem({Key? key, required this.catalog}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return VxBox(
//         child: Row(
//       children: [
//         CatalogImage(
//           image: catalog.image,
//         ),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
//               // catalog.desc.text.textStyle(context.captionStyle).make(),
//               catalog.desc.text.make(),
//               10.heightBox,
//               ButtonBar(
//                 alignment: MainAxisAlignment.spaceBetween,
//                 buttonPadding: Vx.mH8,
//                 children: [
//                   "\$${catalog.price}".text.bold.xl.make(),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(MyTheme.darkBluishColor),
//                         shape: MaterialStateProperty.all(StadiumBorder())),
//                     child: "Buy".text.make(),
//                   ),
//                 ],
//               ).pOnly(right: 8.0),
//             ],
//           ),
//         ),
//       ],
//     )).rounded.white.square(150).make().py16();
//   }
// }
class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(
            image: catalog.image,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
                catalog.desc.text.make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(StadiumBorder()),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.cyan)),
                      child: "Buy".text.bold.make(),
                    ),
                  ],
                ).pOnly(right: 8),
              ],
            ),
          ),
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p4.color(MyTheme.creamColor).make().p16().w40(context);
  }
}
