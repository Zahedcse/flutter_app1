import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://images.ctfassets.net/6rsj5ae0g75g/6nf3rNaaVaUqYcoAcciSeC/a43b6f3da7352837e0db54dc86339420/Last_few_hours_more_for_FlutterLive._Join_us_from_anywhere_around_the_world._Flutter_Excitement_flutterio.jpg?w=450&fl=progressive&q=100";

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              margin: EdgeInsets.zero,
              accountName: Text('Zahed'),
              accountEmail: Text('Zahed@yahoo.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.deepPurple,
            ),
            title: Text(
              'Mail Me',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.deepPurple,
            ),
            title: Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
