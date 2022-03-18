import 'dart:convert';
import 'dart:developer';

import 'package:courier_mobile/helper/httpAPI.dart';
import 'package:courier_mobile/helper/http_helper.dart';
import 'package:courier_mobile/models/User_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Page"),
      ),
      body: const Registration(),
    );
  }
}

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  final _http = HttpHelper();

  final _fullname = TextEditingController();
  final _email = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();

  Future<void> registration() async {
    String _fullname = _password.value.text;
    String _email = _password.value.text;
    String _phoneNumber = _password.value.text;
    String username = _username.value.text;
    String password = _password.value.text;

    var model =  UserModel( name: _fullname, email: _email, phone: _phoneNumber, username: username, password: password);

    String _body = jsonEncode(model.toMap());

    try {
      final response = await _http.postData(UserApi, _body);
      print(response.toString());
      Fluttertoast.showToast(
          msg: "User Save Sucsessfull",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);

      //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminPanal()));


    } catch (e) {
      log(e.toString());
      Fluttertoast.showToast(
          msg: "User Save Faild",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
            child: const Text(
                'User Registration From'
                // style: TextStyle(
                // color: Colors.teal,
                // fontWeight: FontWeight.w500,
                // fontSize: 30)
          )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _fullname,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
                icon: Icon(Icons.person),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _phoneNumber,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
                icon: Icon(Icons.phone_android_outlined),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
             controller: _username,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                icon: Icon(Icons.perm_contact_calendar_outlined),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                icon: Icon(Icons.password),
              ),
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  registration();
                  //HttpHelper _httper = new HttpHelper();
                 // _httper.postData('http://localhost:9091/user_save', _body)
                 // print(nameController.text);
                 // print(passwordController.text);
                },
              )
          ),
        ],

    )
    );
  }
}



