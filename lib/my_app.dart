import 'package:flutter/material.dart';

import 'package:kebabcliker/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const keb(title: "kebab cliker"));
  }
}
