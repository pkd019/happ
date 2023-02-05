import 'package:flutter/material.dart';
import 'package:happ/user/userhome.dart';
import 'package:happ/user/userprofile.dart';

class user2 extends StatefulWidget {
  const user2({Key? key}) : super(key: key);

  @override
  State<user2> createState() => _User1State();
}

class _User1State extends State<user2> {
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text('profile setup')),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Select the  skill you want to hack!",style: TextStyle(fontSize: 26),),
              SizedBox(height: 150,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
        ElevatedButton(onPressed: (){}, child: Text("Next"),),

        ElevatedButton(onPressed: (){}, child: Text("Next")),
        ElevatedButton(onPressed: (){}, child: Text("Next")),],),
              SizedBox(height: 20,),

                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [ ElevatedButton(onPressed: (){}, child: Text("Next")),
        ElevatedButton(onPressed: (){}, child: Text("Next")),
        ],),
              SizedBox(height: 20,),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [ ElevatedButton(onPressed: (){}, child: Text("Next")),
                ElevatedButton(onPressed: (){}, child: Text("Next")),
                ElevatedButton(onPressed: (){}, child: Text("Next")),],),
              SizedBox(height: 150,),
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, 'userHome');}, child: Text("Next")),





            ],
          ),

        ),
      ),
    );
  }
}
