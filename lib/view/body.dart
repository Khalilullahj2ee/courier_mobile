// import 'package:courier_mobile/helper/http_helper.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class TrackingView extends StatefulWidget {
//   const TrackingView({Key? key}) : super(key: key);
//
//   @override
//   _TrackingViewState createState() => _TrackingViewState();
// }
//
// class _TrackingViewState extends State<TrackingView> {
//   final _http = new HttpHelper();
//
//   // getTracking() async {
//   //
//   //   final res = await _http.getData("http://192.168.1.86:9091/order/orderList");
//   //   if(res.statusCode == 200){
//   //     List<dynamic> data = jsonDecode(res.body);
//   //     advertise = data.map((e) => AdvertiseModel.fromMap(e)).toList();
//   //     print(advertise);
//   //     //this.advertise = data.map((e) => AdvertiseModel.fromMap(e));
//   //     print("Hello");
//   //     // showInSnackBar(data["message"]);
//   //     setState(() {
//   //       this.advertise;
//   //     });
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return  Card(
//       color: Colors.white70,
//       child: new Container(
//         padding: EdgeInsets.all(10.0),
//         child: new Column(
//           children: <Widget>[
//             new Row(
//               children: <Widget>[
//                 new Expanded(
//                     child: new Text(
//                   "Delivary Date:",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 )),
//                 new Expanded(
//                   child: new Text("",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       )),
//                 ),
//               ],
//             ),
//             new Row(
//               children: <Widget>[
//                 new Expanded(
//                     child: new Text(
//                   "Tracking Number:",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 )),
//                 new Expanded(
//                   child: new Text("ghfhgfh",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       )),
//                 ),
//               ],
//             ),
//             new Row(
//               children: <Widget>[
//                 new Expanded(
//                     child: new Text(
//                   "Name:",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 )),
//                 new Expanded(
//                   child: new Text("",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       )),
//                 ),
//               ],
//             ),
//             new Row(
//               children: <Widget>[
//                 new Expanded(
//                     child: new Text(
//                   "Phone Number:",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 )),
//                 new Expanded(
//                   child: new Text("",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       )),
//                 ),
//               ],
//             ),
//             new Row(
//               children: <Widget>[
//                 new Expanded(
//                     child: new Text(
//                   "Contents:",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                   ),
//                 )),
//                 new Expanded(
//                   child: new Text("",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       )),
//                 ),
//               ],
//             ),
//             new Row(
//               children: <Widget>[
//                 new Expanded(
//                     child: new Text(
//                   "Delivary Staus:",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.green,
//                     fontSize: 25,
//                   ),
//                 )),
//                 new Expanded(
//                   child: new Text("",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                       )),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
