import 'package:assignment2/post_screen.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(initialRoute: Login.routName, routes: {
      Login.routName: (context) => Login(),
      PostScreen.routeName: (context) => PostScreen(),
      HomeScreen.routName: (context) => HomeScreen()
    });
  }
}
