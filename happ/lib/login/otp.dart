import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happ/login/phone.dart';
import 'package:pinput/pinput.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code="";

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
              'fill the otp',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            Pinput(
              length: 6,
              onChanged: (value){code=value;},
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () async{
                try{ PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: Myphone.verify, smsCode: code);
                await auth.signInWithCredential(credential);
                Navigator.pushNamed(context, 'home');}
                catch(e){
                  print("wrong otp");
                }


              },
              child: Text('verify otp'),
            ),
            TextButton(

                onPressed: () async{



                  Navigator.pushNamed(context, 'phone');
                },
                child: Text(
                  'edit phone number ?',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        )),
      ),
    );
  }
}
