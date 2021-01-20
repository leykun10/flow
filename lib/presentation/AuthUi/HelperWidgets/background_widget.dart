import 'package:flutter/material.dart';
class BackgroundWidget extends StatefulWidget {
  final gradient;

  BackgroundWidget(this.gradient);

  @override
  _BackgroundWidgetState createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(gradient:widget.gradient

      ))
    ;
  }
}
