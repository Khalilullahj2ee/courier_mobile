import 'package:courier_mobile/helper/http_helper.dart';
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

// Search Page
class SearchPage extends StatelessWidget {


  const SearchPage({Key? key}) : super(key: key);

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

                ElevatedButton(onPressed: (){
                  HttpHelper httphelper = new HttpHelper();

                  String trackingNum = _trackingNumController.text;
                  httphelper.getData("http://localhost:9091/search/"+trackingNum).then((res) {
                    print(res.body);
                  });
                }, child: Text("Search")),
              ],
            ),
          ),

          TrackingView(),
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
