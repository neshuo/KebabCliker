import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: IconButton(
        onPressed: () {},
        icon: Image.asset('botonKebab.png'),
        color: Colors.blue,
        iconSize: 200,
        padding: new EdgeInsets.all(0.0),
      )),
    );
  }
}
