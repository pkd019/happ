import 'package:flutter/material.dart';

class userHome extends StatefulWidget {
  const userHome({Key? key}) : super(key: key);

  @override
  State<userHome> createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
      DrawerHeader(
            child: Text(
              "hi i am drawer",
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(color: Colors.indigo),
          ),
      UserAccountsDrawerHeader(
      accountName: Text('xxx'),
      accountEmail: Text("xxx"),
      currentAccountPicture: CircleAvatar(

      ),),
      ListTile(
      leading: Icon(Icons.person),
      title: Text("Account"),
      subtitle: Text("personal"),
      trailing: Icon(Icons.edit),
      ),
      ListTile(
      leading: Icon(Icons.email),
    title: Text("Email"),
    subtitle: Text("pdas0354158@gmail.com"),
    trailing: Icon(Icons.send),
    )
    ]),
      ));
  }
}




