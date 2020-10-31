import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 28);
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
            style: estiloTexto,
          ),
          Text(
            "0",
            style: estiloTexto,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        
        
        onPressed: () {
          print("Me presionaste perro");
        },
        child: Icon(Icons.add),
      ),
      
    );
  }
}
