import 'package:flutter/material.dart';
import 'package:flutterdesdecasa/widget/column.dart';
import 'package:flutterdesdecasa/widget/custom_font.dart';
import 'package:flutterdesdecasa/widget/custom_icons.dart';
import 'package:flutterdesdecasa/widget/list_view.dart';
import 'package:flutterdesdecasa/widget/list_view_builder.dart';
import 'package:flutterdesdecasa/widget/my_images.dart';
import 'package:flutterdesdecasa/widget/scaffold.dart';
import 'package:flutterdesdecasa/widget/stack.dart';
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
    return  const MaterialApp(
      // este vendria siendo nuestro widget madre se entiende que todo esta dentro de un widget global
      home:
          MyImages(), //esto es una instancia de metodo Text, lo trasladamos desde otra pagina(importacion de archivo)
    );
  }
}
