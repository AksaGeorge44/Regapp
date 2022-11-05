import 'package:flutter/material.dart';
import 'package:regapp/screens/btmnavbar.dart';
import 'package:regapp/screens/gridview.dart';
import 'package:regapp/screens/list.dart';
import 'package:regapp/screens/login.dart';
import 'package:regapp/screens/register.dart';
import 'package:regapp/screens/sidenavbar.dart';
import 'package:regapp/screens/tabbar.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
   App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App"),
        ),
        body: SideNav()
      ),
    );
  }
}

