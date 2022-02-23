import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    IconButton(
    onPressed: () => Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => SearchPage())),
    icon: Icon(Icons.search))
    ],
    ),
    );
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(3)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Input Your Tracking Number...',
                    border: InputBorder.none),
              ),
            ),
          )),
      body: const TrackingView(),
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
