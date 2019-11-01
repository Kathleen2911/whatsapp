import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          children: <Widget>[
            buildChat(),
            Divider(),
            buildChat(),
            Divider(),
            buildChat(),
            Divider(),
            buildChat(),
            Divider(),
            buildChat(),
            Divider(),
            buildChat(),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: (){},
      ),
    );
  }

  Widget buildChat() {
    return ListTile(
      leading: CircleAvatar(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image(image: AssetImage('assets/images/pic.jpg'))),
      ),
      title: Text('Hundi'),
      subtitle: Text('Woof!'),
      trailing: Text('14:57'),
    );
  }
}
