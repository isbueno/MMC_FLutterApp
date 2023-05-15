import 'package:flutter/material.dart';
import 'home.dart';
import 'calcular_mmc.dart';
import 'sobre.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MMC App',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  State createState() => MainPageState();
}

class MainPageState extends State<MainPage>{

  late int currentIndex = 0;
  final screens = [
    const Home(),
    const Calcular(),
    const Sobre(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0xff333333),
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff333333),),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_rounded, color: Color(0xff333333),),
            label: 'Calcular MMC',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info, color: Color(0xff333333),),
              label: 'Sobre'
          ),
        ],
      ),
    );
  }
}