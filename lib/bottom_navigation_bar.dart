import 'package:courier_mobile/view/admin_panel.dart';
import 'package:courier_mobile/view/login.dart';
import 'package:courier_mobile/view/profile.dart';
import 'package:courier_mobile/view/sign_up.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/login_model.dart';


class Bottom_bar extends StatefulWidget {
  @override
  State createState() {
    return _MyApp();
  }
}

class _MyApp extends State {
  Widget? _child;

  @override
  void initState() {
    _child = Profile();
    super.initState();
  }

  @override
  Widget build(context) {
    // Build a simple container that switches content based of off the selected navigation item
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        //backgroundColor: Color(0xFF920152),
        extendBody: true,
        body: _child,
        bottomNavigationBar: FluidNavBar(
          icons: [
            FluidNavBarIcon(
                icon: Icons.menu,
                extras: {"label": "Category"}),
            FluidNavBarIcon(
                icon: Icons.home,
                extras: {"label": "Home"}),
            FluidNavBarIcon(
                icon: Icons.person,
                extras: {"label": "Profile"}),
          ],
          onChange: _handleNavigationChange,
          style: FluidNavBarStyle(
              barBackgroundColor: Colors.deepPurpleAccent,
              iconSelectedForegroundColor: Colors.white,
              iconUnselectedForegroundColor: Colors.white70),
          scaleFactor: 1.5,
          defaultIndex: 1,
          itemBuilder: (icon, item) => Semantics(
            label: icon.extras!["label"],
            child: item,
          ),
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = AdminPanal();
          break;
        case 1:
          // _child = SignUp(value: '',
          // );
          break;
        case 2:
          _child = AdminLogin();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 100),
        child: _child,
      );
    });
  }
}

// class BottomBar extends StatelessWidget {
//   const BottomBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.green,
//         items: <Widget>[
//           Icon(Icons.add, size: 20),
//           Icon(Icons.home, size: 20),
//           Icon(Icons.compare_arrows, size: 20),
//           Icon(Icons.perm_contact_cal_outlined, size: 20),
//         ],
//         color: Colors.white,
//         height: 45.0,
//         buttonBackgroundColor: Colors.white60,
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(milliseconds: 600),
//         onTap: (index) {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminPanal()));
//
//           //Handle button tap
//         },
//       ),
//
//     );
//   }
// }
