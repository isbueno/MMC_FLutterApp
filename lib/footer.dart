// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'main.dart';
import 'calcular_mmc.dart';
import 'sobre.dart';


class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    Home(),
    Calcular(),
    Sobre(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0xff333333),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff333333),),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined, color: Color(0xff333333),),
              label: 'Calcular MMC'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info, color: Color(0xff333333),),
              label: 'Saiba mais'
          )
        ],
      ),
    );
  }
}
