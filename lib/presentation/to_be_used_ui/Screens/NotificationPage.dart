import 'package:flutter/material.dart';
class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('notification'),),
      body: Stack(
        children: [
          Transform(
            transform: Matrix4.rotationZ(0.5),
            alignment: Alignment.centerLeft,
            child:  Center(child: Text('notificatio',style: TextStyle(color: Colors.black,fontSize: 40),),

            ),
          ),
          Transform(
            transform: Matrix4.rotationZ(-0.5),
            alignment: Alignment.centerLeft,
            child:  Center(child: Text('notification',style: TextStyle(color: Colors.black,fontSize: 40),),

            ),
          )
        ],
      ),
    );

  }
}
