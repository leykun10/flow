import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../UIParts/Widget_items/AppBarItem.dart';
class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover'),),
        body: Container(height: 0.5,color: Colors.white,child: Center(child: Text('home',style: TextStyle(color: Colors.black),),),));
  }
}