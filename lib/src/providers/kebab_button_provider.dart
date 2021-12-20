import 'package:flutter/material.dart';

class keb extends StatefulWidget {
  const keb({Key? key}) : super(key: key);

  @override
  State<keb> createState() => KebabButton();
}

@override
class MyStatelessWidget extends State<keb> {
  int _kebabs = 0;
  String boton = "3DbotonKebab.png";
  static AudioCache player = AudioCache();

  void _ClikKebab() {
    setState(() {
      _kebabs++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: ,
        body:Column(
          children: [
          SizedBox(height: 35),
          Container(
            child: Text('$_kebabs' " Kebabs",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 80)),
          ),
          SizedBox(height: 80),
          IconButton(
              icon: Image.asset(boton),
              color: Colors.blue,
              iconSize: 200,
              padding: new EdgeInsets.all(0.0),
              onPressed: () {
                _ClikKebab();
                setState(() async {
                  boton = "3Dbo.png";
                  //player.play("clicar.mp3");
                  await Future.delayed(const Duration(milliseconds: 350), () {
                    setState(() {
                      boton = "3Dbotonkebab.png";
                    });
                  });
                });
              })
        ],
      ),
    );