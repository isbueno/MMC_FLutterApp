import 'package:flutter/material.dart';
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
      title: 'Carona IF',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State createState() => HomePageState();
}


class HomePageState extends State<Home>{

  late int currentIndex = 0;
  final screens = [
    const Home(),
    const Calcular(),
    const Sobre(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff8f8f8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.home, color: Color(0xff333333),),
          ],
        ),
      ),
      body: Container(
        color: const Color(0xffffffff),
        height: 800,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  const [
                  Padding(padding: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 20, right: 20),
                    child: Text("Sua saúde é uma prioridade", 
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                          ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                    child: Text("Estamos aqui para te ajudar a cuidar melhor de si, calcule o seu MMC.", 
                           style: TextStyle( fontSize: 16, color: Color(0xff7a7a7a),)
                          ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("/assets/images/img01.jpg"), fit: BoxFit.cover,)
                    ),
                    child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 40.0, left: 20, right: 20),
                            child: Text("Calcule o seu MMC", 
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                                   ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                            child: Text("Clique aqui para ir para a próxima página e explorar mais!", 
                                    style: TextStyle(fontSize: 16)
                                   ),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Calcular()),
                                  );
                                },
                                child: const Text('Calcular MMC'),
                              )                            
                          ),
                        ],
                      ),

                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xfff8f8f8),
                    ),
                    child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 40.0, left: 20, right: 20),
                            child: Text("Saiba mais sobre o aplicativo", 
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                                   ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                            child: Text("Clique aqui para ir para a próxima página e explorar mais!", 
                                    style: TextStyle(fontSize: 16)
                                   ),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Sobre()),
                                  );
                                },
                                child: const Text('Calcular MMC'),
                              )                            
                          ),
                        ],
                      ),
                      
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

