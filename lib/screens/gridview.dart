import 'package:flutter/material.dart';

class StudentList1 extends StatefulWidget {
  const StudentList1({Key? key}) : super(key: key);

  @override
  State<StudentList1> createState() => _StudentList1State();
}

class _StudentList1State extends State<StudentList1> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

            itemBuilder: (context,index){
        return Card(
          child: Text("hello"),
        );

            },
        ),
      ),
    );
  }
}
