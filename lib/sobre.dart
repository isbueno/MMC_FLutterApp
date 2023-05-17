import 'package:flutter/material.dart';



class Sobre extends StatelessWidget{
  const Sobre({super.key});
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.info),
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
                  child: Text("Conheça mais sobre o aplicativo!"),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10.0, left: 20, right: 20),
                  child: Text("Lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem", 
                      style: TextStyle( fontSize: 16, color: Color(0xff7a7a7a),),
                      textAlign: TextAlign.center,
                    ),
                ),
                Expanded(child: 
                  SizedBox(
                      child: Image(image: AssetImage('../assets/images/banner-sobre.jpg'), fit: BoxFit.contain)
                    )
                ),
              ],
            ),
          ),
      ),
    );
  }
}