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
    );
  }
}
