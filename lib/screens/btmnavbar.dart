import 'package:flutter/material.dart';
import 'package:regapp/screens/contacts.dart';
import 'package:regapp/screens/home.dart';
import 'package:regapp/screens/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentindex=0;
  List mypages=[Home(),Contacts(),Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mypages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            this.setState(() {
              _currentindex=index;
            });

          },
currentIndex: _currentindex,
            items: [
              BottomNavigationBarItem(
                  label: "Hello",
                  icon: Icon(Icons.home,color: Colors.blue,size: 30,)),
              BottomNavigationBarItem(
                  label: "Contacts",
                  icon: Icon(Icons.contact_page_outlined,color: Colors.blue,size: 30,)),
              BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(Icons.account_box_outlined,color: Colors.blue,size: 30,)),

            ]),
      ),
    );
  }
}
