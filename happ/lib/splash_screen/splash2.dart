import 'package:flutter/material.dart';
import 'package:happ/login/phone.dart';

import 'Splash3.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _SplashState();
}

class _SplashState extends State<Splash2> {
  @override
  void initState(){
    super.initState();
    _phone();
  }
  _phone()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Splash3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Center(
      child: Container(
        child:
        Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Develop skills relevant to industry",style: TextStyle(fontSize: 40,
              ),)
            ],
          ),

        ),

      ),
    ),);
  }
}
