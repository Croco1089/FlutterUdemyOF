import 'package:flutter/material.dart';
//import 'package:flutterdesdecasa/widget/column.dart';
//import 'package:flutterdesdecasa/widget/safe_area.dart';
import 'package:flutterdesdecasa/widget/single_child_scroll.dart';
//import 'package:flutterdesdecasa/widget/scaffold.dart';
//import 'package:flutterdesdecasa/widget/stack.dart';
//import 'package:flutterdesdecasa/widget/container.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // este vendria siendo nuestro widget madre se entiende que todo esta dentro de un widget global
      home: MySingleChildScrollView(),
       //esto es una instancia de metodo Text, lo trasladamos desde otra pagina(importacion de archivo)
    );
  }
}
