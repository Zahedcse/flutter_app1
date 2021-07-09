import 'package:flutter/material.dart';
import 'package:flutter_app1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = 'codepur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.deepOrange,
        title: Text(
          'MY APP',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print('search clicked');
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print('profile clicked');
              },
              icon: Icon(Icons.person)),
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
