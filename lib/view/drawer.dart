import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ordder_table.dart';

class HomepageDrawer extends StatefulWidget {
  const HomepageDrawer({Key? key}) : super(key: key);

  @override
  _HomepageDrawerState createState() => _HomepageDrawerState();
}

class _HomepageDrawerState extends State<HomepageDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("A.T.M. KHALILULLAH"),
            accountEmail: Text("atmkhalilullah91@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/ami.jpg',
              ),
              radius: 60.0,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: Text("Settings"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrderDetails()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Order Table"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
