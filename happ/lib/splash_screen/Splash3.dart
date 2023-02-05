import 'package:flutter/material.dart';
import 'package:happ/login/phone.dart';

class Splash3 extends StatefulWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  State<Splash3> createState() => _SplashState();
}

class _SplashState extends State<Splash3> {
   @override
  void initState(){
    super.initState();
    _phone();
  }
  _phone()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Myphone()));
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

              Text("Increase odds of landing a job!",style: TextStyle(fontSize: 40,
              ),)
            ],
          ),
        ),

      ),
    ),);
  }
}
