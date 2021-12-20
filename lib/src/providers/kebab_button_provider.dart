import 'package:flutter/material.dart';

class keb extends StatefulWidget {
  const keb({Key? key}) : super(key: key);

  @override
  State<keb> createState() => KebabButton();
}

class KebabButton extends State<keb> {
  int _kebabs = 0;
  String button = 'assets/images/kebab_button_3D.png';

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
            child: Text(
              '$_kebabs' " Kebabs",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50),
            ),
          ),
          SizedBox(height: 80),
          IconButton(
            onPressed: () {
              _ClikKebab();
              // setState(() async {
              //   button = "assets/images/kebab_button_3D_pressed.png";
              //   await Future.delayed(const Duration(milliseconds: 350), () {
              //     setState(() {
              //       button = 'assets/images/kebab_button_3D.png';
              //     });
              //   });
              // });
            },
            icon: Image.asset(button),
            color: Colors.blue,
            iconSize: 200,
            padding: new EdgeInsets.all(0.0),
          )
        ],
      ),
    ));
  }
}
