import 'package:flutter/material.dart';
class StackOfScreen extends StatefulWidget {
  final int index;
  StackOfScreen({this.index});
  @override
  _StackOfScreenState createState() => _StackOfScreenState();
}

class _StackOfScreenState extends State<StackOfScreen> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.index,
      children: [
      ],
    );
  }
}
