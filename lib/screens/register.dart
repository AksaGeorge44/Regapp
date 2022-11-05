
import 'package:flutter/material.dart';
import 'package:regapp/screens/login.dart';
import 'package:regapp/screens/register.dart';
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController name=TextEditingController();
  TextEditingController admno=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController clgname=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GestureDetector(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.abc),
                      labelText: "name",
                      hintText: "enter name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(controller: admno,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.numbers),
                      labelText: "admno",
                      hintText: "enter admno",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),),
                SizedBox(height: 20,),
                TextField(controller: rollno,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.numbers),
                      labelText: "rollno",
                      hintText: "enter rollno",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),),
                SizedBox(height: 20,),
                TextField(controller: clgname,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.abc_outlined),
                      labelText: "clgname",
                      hintText: "enter clgname",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),),
                SizedBox(height: 20,),
                SizedBox(child:
                RaisedButton(onPressed: (){
                  var getname=name.text;
                  var getadmno=admno.text;
                  var getrollno=rollno.text;
                  var getclgname=clgname.text;
                  print(getname);
                  print(getadmno);
                  print(getrollno);
                  print(getclgname);

                },
                  child: Text("Register"),
                  color: Colors.blue,


                ),),
                SizedBox(height: 20,),
                RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

                },
                  child: Text("Back To Login"),
                  color: Colors.blue,

                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

