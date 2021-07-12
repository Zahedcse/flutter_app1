import 'package:flutter/material.dart';
import 'package:flutter_app1/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app1/widgets/item_widget.dart';
import '../models/catalog.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = 'codepur';

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(8, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('search clicked');
            },
            icon: Icon(
              CupertinoIcons.search,
            ),
          ),
          IconButton(
              onPressed: () {
                print('profile clicked');
              },
              icon: Icon(
                CupertinoIcons.cart,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
