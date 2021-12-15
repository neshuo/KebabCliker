import 'package:flutter/material.dart';

class keb extends StatefulWidget {
  const keb({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<keb> createState() => HomePage();
}

class HomePage extends State<keb> {
  int _kebabs = 0;

  void _ClikKebab() {
    setState(() {
      _kebabs++;
    });
  }

  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 35),
          Container(
            child: Text('$_kebabs' " Kebabs",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 80)),
          ),
          SizedBox(height: 80),
          IconButton(
            onPressed: _ClikKebab,
            icon: Image.asset('assets/images/botonkebab.png'),
            color: Colors.blue,
            iconSize: 200,
            padding: new EdgeInsets.all(0.0),
          )
        ],
      ),
    ));
  }
}
