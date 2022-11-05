import 'package:flutter/material.dart';
import 'package:regapp/screens/drawer.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

        ),
        drawer: MyDrawer(),
        body: Container(
          child: Center(child: Text("hello")),
        ),

      ),
    );

  }
}
