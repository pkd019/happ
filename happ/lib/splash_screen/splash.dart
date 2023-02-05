
import 'package:flutter/material.dart';

import 'package:happ/splash_screen/splash2.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   @override
  void initState(){
    super.initState();
    _phone();
  }
  _phone()async{
    await Future.delayed(Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Splash2()));
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
              Text('Skillhack',style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text("Hack a skill, earn reward,land a job",style: TextStyle(fontSize: 20,
              ),)
            ],
          ),

        ),

      ),
    ),);
  }
}
