import 'package:flutter/material.dart';
import 'package:happ/user/contact.dart';

import '../login/phone.dart';

class userProfile extends StatefulWidget {
  const userProfile({Key? key}) : super(key: key);

  @override
  State<userProfile> createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
  Widget box({width: 180.0, height: 130.0}) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('profile setup')),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 60,
                    backgroundColor: Colors.blue,),

                  Text("Name of User", style: TextStyle(fontSize: 16),),

                  Text("Name of User", style: TextStyle(fontSize: 16),),

                  Row(
                    children: [Text('Skills',style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold),),]
                  ),

                  SizedBox(height: 52),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [ ElevatedButton(onPressed: (){}, child: Text("Next")),
                      ElevatedButton(onPressed: (){}, child: Text("Next")),
                      ElevatedButton(onPressed: (){}, child: Text("Next")),],),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                    box(),
                      box(),

                ],

              ),
                  TextButton(onPressed: (){Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>contactUs()));}, child:Text('Contact Us'),),
                  TextButton(onPressed: (){}, child:Text('Terms & Conditions'),),
                  TextButton(onPressed: (){Navigator.pushNamed(context, 'phone');}, child:Text('Log Out'),),
            ]),
          ),
        ),
      ),
    ));
  } }
