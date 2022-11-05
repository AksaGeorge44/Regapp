import 'package:flutter/material.dart';
import 'package:regapp/screens/login.dart';
import 'package:regapp/screens/register.dart';
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController uname=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: uname,
                decoration:  InputDecoration(
                    prefixIcon: Icon(Icons.account_box_outlined),
                    labelText: "uname",
                    hintText: "enter username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "password",
                    hintText: "enter password",
                    helperText: "password should contain minimum 8 characters",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(child:
              RaisedButton(onPressed: (){
                var getuname=uname.text;
                var getpassword=password.text;
                print(getuname);
                print(getpassword);

              },
                child: Text("LOGIN"),
                color: Colors.blue,

              ),),
              SizedBox(height: 20,),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));

              },
                child: Text("REGISTER"),
                color: Colors.blue,
              )

            ],
          ),
        ),
      ),
    );
  }
}