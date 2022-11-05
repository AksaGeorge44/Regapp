import 'package:flutter/material.dart';
import 'package:regapp/screens/contacts.dart';
import 'package:regapp/screens/home.dart';
import 'package:regapp/screens/profile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.red,
              child: Text("A"),
            ),
              accountName: Text("aksa"),
              accountEmail: Text("abs@gmail.com"),),
          ListTile(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
  },
            title: Text("Home"),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Contacts()));
            },
            title: Text("Contacts"),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
            },
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
