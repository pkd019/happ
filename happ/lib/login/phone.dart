import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happ/home.dart';

class Myphone extends StatefulWidget {
  const Myphone({super.key});

  static String verify=" ";
  @override
  State<Myphone> createState() => _MyphoneState();
}

class _MyphoneState extends State<Myphone> {

  TextEditingController countrycode = TextEditingController();
  var phone=" ";
  @override
  void initState() {
    countrycode.text = '+91';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Skill hack',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Login via Your mobile number',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: countrycode,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(fontSize: 33),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value){phone=value;}
                      ,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () async{await FirebaseAuth.instance.verifyPhoneNumber(
                phoneNumber: '${countrycode.text+phone}',
                verificationCompleted: (PhoneAuthCredential credential) {},
                verificationFailed: (FirebaseAuthException e) {},
                codeSent: (String verificationId, int? resendToken) {
                  Myphone.verify=verificationId;
                  Navigator.pushNamed(context, 'otp');},
                codeAutoRetrievalTimeout: (String verificationId) {},
              );
                },
              child: Text('Send Otp'),
            ),
            ElevatedButton(onPressed: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>MyHome()))
            ;}, child: Text("guest"),),

          ],
        )),
      ),
    );
  }
}
