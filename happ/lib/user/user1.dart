import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class user1 extends StatefulWidget {
  const user1({Key? key}) : super(key: key);

  @override
  State<user1> createState() => _User1State();
}

class _User1State extends State<user1> {
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 105,
    backgroundColor: Colors.red,
    child: CircleAvatar(
    radius: 100,  ),),
                Text("Tell us your name",style: TextStyle(fontSize: 26),),
                Container(child: TextField(textAlign: TextAlign.center,),),
                Text("Enter your D.O.B.",style: TextStyle(fontSize: 26),),
    TextField(
    controller: dateinput, //editing controller of this TextField
    decoration: InputDecoration(
    icon: Icon(Icons.calendar_today), //icon of text field
    labelText: "Enter Date" //label text of field
    ),
    readOnly: true,  //set it true, so that user will not able to edit text
    onTap: () async {
      DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2101)
      );

      if (pickedDate != null) {
        print(pickedDate);
        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
        print(formattedDate);
        setState(() {
            dateinput.text = formattedDate; //set output date to TextField value.
        });
      } else {
        print("Date is not selected");
      }}
    ,
    ),
                SizedBox(height: 70,),
                ElevatedButton(onPressed: (){Navigator.pushNamed(context,'user2');}, child: Text("Next"))

              ],
       ),
          ),
        ),
      ),
    );
  }
}
