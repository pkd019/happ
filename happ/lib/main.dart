

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:happ/home.dart';
import 'package:happ/login/otp.dart';
import 'package:happ/login/phone.dart';
import 'package:happ/splash_screen/splash.dart';
import 'package:happ/user/user1.dart';
import 'package:happ/user/user2.dart';

import 'package:happ/user/userprofile.dart';

void main() async{

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MaterialApp(
      initialRoute: 'Splash',
      routes: {
        'Splash':(context) => Splash(),
        'phone': (context) => Myphone(),
        'otp': (context) => MyOtp(),
        'home': (context) => MyHome(),
        'user1':(context) => user1(),
        'user2':(context)=> user2(),
        'userHome':(context)=>userProfile(),
      },
    ));

}
