import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_screen.dart';
import 'package:whatsapp/screens/status_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text('WhatsApp'),
              actions: <Widget>[
                Icon(Icons.search),

                Icon(Icons.more_vert),
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: 'Chats'),
                  Tab(text: 'Status'),
                  Tab(text: 'Anrufe'),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                StatusScreen(),
                ChatScreen(),
                StatusScreen(),
                ChatScreen(),
              ],
            )
          )
      ),
    );
  }
}


