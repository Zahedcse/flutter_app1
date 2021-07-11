import 'package:flutter/material.dart';
import 'package:flutter_app1/widgets/drawer.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = 'codepur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog APP',
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
                CupertinoIcons.person,
              )),
        ],
      ),
      body: Center(
        child: Container(
          child: Text("This is $days of tutorial of $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
