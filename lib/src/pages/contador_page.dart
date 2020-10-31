import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 28);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Titulo"),
          centerTitle: true,
          elevation: 20.0,
          brightness: Brightness.dark,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Numero de clicks",
              style: _estiloTexto,
            ),
            Text(
              "$_conteo",
              style: _estiloTexto,
            )
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton( onPressed: _setearZero,child: Icon(Icons.exposure_zero)),
        
        Expanded(child: SizedBox()),
        FloatingActionButton( onPressed: _quitar,child: Icon(Icons.remove)),
        
        SizedBox( width: 5.0),
        FloatingActionButton( onPressed: _agregar,child: Icon(Icons.add)),
      ],
    );
  }

  void _agregar() {
    setState(()=> _conteo++);
  }

  void _quitar() {
    setState(()=> _conteo>0 ? _conteo--: null);
  }

  void _setearZero(){
    setState(()=> _conteo=0);
  }
  
}
