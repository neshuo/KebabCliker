import 'package:flutter/material.dart';
import 'package:kebabcliker/src/pages/upgrade_page.dart';
import 'package:kebabcliker/src/providers/kebab_button_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int currentIndex = 0;

  //Aquí van las diferentes pages
  final screens = [
    keb(),
    UpgradePage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        // appBar: AppBar(
        //   title: Text('Bottom Navigaton Bar'),
        //   centerTitle: true,
        // ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          onTap: (index) => setState(() =>
              currentIndex = index), //Se utiliza para navegar por la barra
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_upward),
              label: 'Upgrades',
              backgroundColor: Colors.red,
            ),
          ],
        ),
      );
}
