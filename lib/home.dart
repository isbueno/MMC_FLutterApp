import 'package:flutter/material.dart';
import 'bottom_navigation_model.dart';
import 'calcular_mmc.dart';


class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<Home>{
 int _currentPageIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1c8db9),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.home, color: Color(0xffffffff),),
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
                  Padding(padding: EdgeInsets.only(top: 80.0, bottom: 10.0, left: 20, right: 20),
                    child: Text("Precisa de ajuda para realizar seus cálculo?", 
                           style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                          ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 40.0, left: 20, right: 20),
                    child: Text("Calcule seu MMC em um piscar de olhos!", 
                           style: TextStyle( fontSize: 16, color: Color(0xff7a7a7a),)
                          ),
                  ),         
                ],
              ),
              Column(
                children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 40.0, left: 20, right: 20),
                            child: Text("O MMC: desvendando os múltiplos e simplificando os números.", 
                                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
                                   ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                            child: Text("Clique no botão abaixo para explorar mais!", 
                                    style: TextStyle(fontSize: 16)
                                   ),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff1c8db9)), // Define a cor de fundo
                                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 40, vertical: 20))
                              ),
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

                ],
              ),
            ]
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationModel(
        currentPageIndex: _currentPageIndex,
        onPageChanged: _onPageChanged,
      ),
    );
  }
}

