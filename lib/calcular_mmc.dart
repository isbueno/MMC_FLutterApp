import 'package:flutter/material.dart';
import 'bottom_navigation_model.dart';


class Calcular extends StatefulWidget {
  const Calcular({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalcularState createState() => _CalcularState();

}

class _CalcularState extends State<Calcular>{
  /*BottomNavigationBar links */
  int _currentPageIndex = 1;

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  /* Parte do cálculo do MMC */
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String resultado = '';

  int calcularMmc(int a, int b) {
    int gcd = calcularPercentual(a, b);
    int lcm = (a * b) ~/ gcd;
    return lcm;
  }

  int calcularPercentual(int a, int b) {
    if (b == 0) {
      return a;
    }
    return calcularPercentual(b, a % b);
  }

  void calculateButtonPressed() {
    int num1 = int.tryParse(num1Controller.text) ?? 0;
    int num2 = int.tryParse(num2Controller.text) ?? 0;
    int mmc = calcularMmc(num1, num2);
    setState(() {
      resultado = 'O MMC de $num1 e $num2 é: $mmc';
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
            Icon(Icons.calculate_rounded),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
        color: const Color(0xffffffff),
        height: 800,
        width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 20, right: 20),
                  child: Text("Calcule o seu MMC", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                  child: Text("Siga os passos abaixo para calcular o seu MMC", 
                      style: TextStyle( fontSize: 16, color: Color(0xff7a7a7a),),
                      textAlign: TextAlign.center,
                    ),
                ),
                const SizedBox(
                      height: 200,
                      child: Image(image: AssetImage('../assets/images/banner-calculo_mmc.jpg'), fit: BoxFit.fitWidth)
                    ),
                
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: 
                  Column(
                    children: [
                      TextField(
                        controller: num1Controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Insira o Primeiro número',
                          hintText: 'Número 1',
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextField(
                        controller: num2Controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Insira o Segundo número',
                          hintText: 'Número 2',
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: calculateButtonPressed,
                        child: const Text('Calcular MMC'),
                      ),
                      const SizedBox(height: 20.0),
                      Text(resultado, style: const TextStyle(fontSize: 20.0),),
                    ],
                  ),
                ),
          ],
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
