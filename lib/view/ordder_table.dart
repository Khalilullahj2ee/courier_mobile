import 'dart:convert';

import 'package:courier_mobile/helper/httpAPI.dart';
import 'package:courier_mobile/helper/http_helper.dart';
import 'package:courier_mobile/models/tracking_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  final _http = new HttpHelper();
  List<TrackingOrder> orderList = [];


  @override
  void initState() {
    getOrderList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Order List",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataTable(
                      headingRowColor: MaterialStateColor.resolveWith(
                              (states) => Colors.green),
                      columns: [
                        DataColumn(
                          label: Text(
                            'ID',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Tracking Number',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Sender Name',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Sender Email',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Mobile Number',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Address',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Order Date',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ],
                      rows: [
                        for (int i = 0; i < orderList.length; i++)
                          DataRow(cells: [
                            DataCell(Text(orderList[i].id.toString())),
                            DataCell(Text(orderList[i].trackingNum)),
                            DataCell(Text(orderList[i].senderName)),
                            DataCell(Text(orderList[i].senderEmail)),
                            DataCell(Text(orderList[i].senderPhone)),
                            DataCell(Text(orderList[i].senderAddress)),
                            DataCell(Text(orderList[i].orderDate)),
                          ])
                      ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<void> getOrderList() async {
    final res = await _http.getData(OrderList);
    print("object");
    if (res.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(res.body);

      var data = map['data'] as List<dynamic>;
      print("Order Show SWucsessfull");
      setState(() {
        orderList = data.map((e) => TrackingOrder.fromMap(e)).toList();
      });
    }
  }
  }

