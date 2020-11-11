import 'package:flutter/material.dart';
import 'componentes.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  //MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  GlobalKey<MiTextoState> clave = new GlobalKey();

  click(){
    print('click');
    clave.currentState.repintar('Nuevo Texto');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                  onPressed: (){click();},
                  child: Text('Boton')),
              MiTexto(
                key: clave,
                txt: "Texto"
              ),
            ],
          ),
        )
    );
  }
}