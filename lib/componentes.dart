import 'package:flutter/material.dart';


//====================================================
class MiTexto extends StatefulWidget {
  //MiTexto({Key key}) : super(key: key);
  String cadena;
  MiTexto({Key key, String txt}): super(key: key){
    print('Constructor miTexto -->'+txt+' Clave: '+key.toString());
    this.cadena = txt;
  }
  @override
  MiTextoState createState() => MiTextoState(this.cadena);
}
class MiTextoState extends State<MiTexto> {
  String miCadena="";
  MiTextoState(String cad){
    print('Constructor miTexto -->'+cad);
    this.miCadena=cad;
  }

  repintar(String c){
    setState((){
      miCadena = c;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Text(miCadena);


  }
}
