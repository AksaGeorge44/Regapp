import 'package:flutter/material.dart';
import 'package:regapp/screens/contacts.dart';
import 'package:regapp/screens/home.dart';
import 'package:regapp/screens/profile.dart';

class TabView extends StatelessWidget {
   TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(

                tabs: [
                  Tab(text: "hello",),
                  Tab(text: "contacts",),
                  Tab(text: "profile",),
                ]),
          ),
          body: TabBarView(

              children: [
                Home(),Contacts(),Profile()
              ]),
        ),
      ),
    );
  }
}
