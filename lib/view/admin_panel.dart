import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminPanal extends StatefulWidget {
  const AdminPanal({Key? key}) : super(key: key);

  @override
  _AdminPanalState createState() => _AdminPanalState();
}

class _AdminPanalState extends State<AdminPanal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        title: Text("Welcome To Admin Pannal"),),
      body: const Dashboard(),
    );
  }
}


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album, size: 45),
            title: Text('Sonu Nigam'),
            subtitle: Text('Best of Sonu Nigam Song'),
          ),
        ],
      ),
    );
}

 }