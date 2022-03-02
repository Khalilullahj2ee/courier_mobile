import 'dart:convert';

import 'package:courier_mobile/helper/http_helper.dart';
import 'package:courier_mobile/models/tracking_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'body.dart';

class AdminPanal extends StatefulWidget {
  const AdminPanal({Key? key}) : super(key: key);

  @override
  _AdminPanalState createState() => _AdminPanalState();
}

class _AdminPanalState extends State<AdminPanal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // title: Text("Order Tracking"),),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Tracking'),
        actions: [
          // Navigate to the Search Screen
          // IconButton(
          // onPressed: () => Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (_) => SearchPage())),
          // icon: Icon(Icons.search))
        ],
      ),
      body: const SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var trackingOrder = TrackingOrder() ;

  @override
  Widget build(BuildContext context) {
    var _trackingNumController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _trackingNumController,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      HttpHelper httphelper = new HttpHelper();
                      print('ok');

                      String trackingNum = _trackingNumController.text;
                      httphelper
                          .getData(
                              "http://localhost:9091/search/" + trackingNum)
                          .then((res) {
                        print(res.body);
                        Map<String, dynamic> map = jsonDecode(res.body);
                   trackingOrder = TrackingOrder.fromMap(map['data']);
                        setState(() {

                        });


                      });
                    },
                    child: Text("Search")),
              ],
            ),
          ),
          Card(
            color: Colors.white70,
            child: new Container(
              padding: EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text(
                        "Delivary Date: " ,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )),
                      new Expanded(
                        child: new Text(trackingOrder.orderDate,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text(
                        "Tracking Number:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )),
                      new Expanded(
                        child: new Text(trackingOrder.trackingNum,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text(
                        "Name:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )),
                      new Expanded(
                        child: new Text(trackingOrder.receiveName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text(
                        "Phone Number:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )),
                      new Expanded(
                        child: new Text(trackingOrder.receiverPhon,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text(
                        "Contents:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )),
                      new Expanded(
                        child: new Text(trackingOrder.contents,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text(
                        "Delivary Staus:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 25,
                        ),
                      )),
                      new Expanded(
                        child: new Text(trackingOrder.status,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// return Card(
//   child: Column(
//     mainAxisSize: MainAxisSize.min,
//     children: <Widget>[
//
//       const ListTile(
//         leading: Icon(Icons.album, size: 45),
//         title: Text('Monthely Order'),
//         subtitle: Text('Januyary 2022'),
//       ),
//     ],
//   ),
// );
