import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage()
    );
  }
}