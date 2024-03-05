import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pdaftar/screen/menu/transfer.dart';

import '../../screen/begin/sign_in.dart';
import 'Profil.dart';
import 'Star.dart';
import 'mainning.dart';

@RoutePage()
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  List body = [Main(), Transfer(), Star(), Profil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (int newindex) {
          setState(() {
            _currentIndex = newindex;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.hardware), label: "Transfer"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Star"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
