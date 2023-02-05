import 'package:flutter/material.dart';
import 'package:happ/user/userprofile.dart';

class contactUs extends StatefulWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact Us"),),
      body: Container(child: SingleChildScrollView(
        child: Column(children: [
          Text('Hi! This is gaurav.this is pankaj.',style: TextStyle(fontSize: 18),),

            ],),
      ),
      ),



    );
  }
}
