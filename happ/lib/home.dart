

import 'package:flutter/material.dart';
import 'package:happ/user/user1.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('home'),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Admin")),
              SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () async{
            Navigator.pushNamed(context, 'user1');


          },
          child: Text('user'),)
            ],
          ),
        ),
      ),
    );
  }
}

