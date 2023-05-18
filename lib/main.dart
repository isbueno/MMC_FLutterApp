import 'package:flutter/material.dart';
import 'home.dart';
import 'calcular_mmc.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carona IF',
      onGenerateRoute: (settings){
        switch (settings.name){
          case '/':
            return MaterialPageRoute(builder: (_) => const Home());
          case '/calcular':
            return MaterialPageRoute(builder: (_) => const Calcular());
          default:
            return MaterialPageRoute(builder: (_) => const Calcular());
        }
      },
      home: const Home(),
    );
  }
}
