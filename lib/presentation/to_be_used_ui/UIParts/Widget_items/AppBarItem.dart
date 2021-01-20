import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class AppBarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Row(
      children: [
        SizedBox(width: 10,),
        IconButton(icon: FaIcon(FontAwesomeIcons.user,
          color: Colors.indigo,size: 32,))
        ,SizedBox(width: 120,),
        CircleAvatar(
          radius: 25,
          child: Text('home'),backgroundColor: Colors.black,),
        SizedBox(width: 130,),
        IconButton(icon: Icon(FontAwesomeIcons.meetup,color: Colors.indigo,size: 32,)),],));
  }
}
