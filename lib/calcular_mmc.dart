import 'package:flutter/material.dart';

class Calcular extends StatelessWidget{
  const Calcular({super.key});
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
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
        height: 400,
        width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  const [
                Padding(padding: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 20, right: 20),
                  child: Text("Calcule o seu MMC"),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                  child: Text("Siga os passos abaixo para calcular o seu MMC", 
                      style: TextStyle( fontSize: 16, color: Color(0xff7a7a7a),),
                      textAlign: TextAlign.center,
                    ),
                ),
                Expanded(child: 
                  SizedBox(
                      child: Image(image: AssetImage('../assets/images/banner-calculo_mmc.jpg'), fit: BoxFit.contain)
                    )
                ),
              ],
            ),
          ),
      )
    );
  }
}