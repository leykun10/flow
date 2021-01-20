import 'package:flutter/material.dart';

class PageItem extends StatelessWidget {
  PageItem({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings){
        return MaterialPageRoute(builder: (context)=>child);
      },
    );
  }
}
