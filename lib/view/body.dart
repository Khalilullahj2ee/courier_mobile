import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrackingView extends StatefulWidget {
  const TrackingView({Key? key}) : super(key: key);

  @override
  _TrackingViewState createState() => _TrackingViewState();
}

class _TrackingViewState extends State<TrackingView> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(selectedColor: Colors.teal,
             //   leading: Icon(Icons.album, size: 45),
                title: Text('Order Track' ),



              ),
            ],
          ),
    );
  }
}
