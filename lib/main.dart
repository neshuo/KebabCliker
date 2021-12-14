import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Kebab Cliker')),
      body: MyStatelessWidget(),
    ));
  }
}

@override
class MyStatelessWidget extends StatelessWidget {
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
