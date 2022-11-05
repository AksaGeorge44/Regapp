import 'package:flutter/material.dart';
import 'package:regapp/screens/drawer.dart';
class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

        ),
        drawer: MyDrawer(),

        body: Container(
          child: Center(child: Text("Contacts")),

        ),

      ),
    );
  }
}
