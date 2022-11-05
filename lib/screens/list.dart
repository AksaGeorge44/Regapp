import 'package:flutter/material.dart';

class StudentList extends StatefulWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  List names=[];
  List admnos=[];
  List rollnos=[];
  List clgnames=[];
  TextEditingController name=TextEditingController();
  TextEditingController admno=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController clgname=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.abc_outlined),
                  labelText: "name",
                  hintText: "enter name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: admno,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "admno",
                  hintText: "enter admno",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: rollno,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "clgno",
                  hintText: "enter clgno",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: clgname,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.abc_outlined),
                  labelText: "clgname",
                  hintText: "enter clgname",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(child:
              RaisedButton(onPressed: (){
                var getname=name.text;
                var getadmno=admno.text;
                var getrollno=rollno.text;
                var getclgname=clgname.text;
                this.setState(() {
                  names.add(getname);
                  admnos.add(getadmno);
                  rollnos.add(getrollno);
                  clgnames.add(getclgname);
                });

                print(getname);
                print(getadmno);
                print(getrollno);
                print(getclgname);


              },
                child: Text("Add"),
                color: Colors.blue,

              ),),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,

                  itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text(names[index]),
                    subtitle: Text("Admno:"+admnos[index]+"\n"+"Rollno:"+rollnos[index]+"\n"+"Clgname:"+clgnames[index]),
                  trailing: GestureDetector(
                      onTap: (){
                        this.setState(() {
                          names.removeAt(index);
                          admnos.removeAt(index);
                          rollnos.removeAt(index);
                          clgnames.removeAt(index);
                        });

                      },
                      child: Icon(Icons.delete,color: Colors.red,)),

                  ),
                );

                  },



              )

            ],
          ),
        ),
      ),
    );
  }
}
