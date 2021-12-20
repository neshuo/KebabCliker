import 'package:flutter/material.dart';

import 'package:kebabcliker/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  const  int _kebabs = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
