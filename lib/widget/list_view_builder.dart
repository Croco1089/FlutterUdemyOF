
import 'package:flutter/material.dart';


class MyListBuilder extends StatelessWidget{
  const MyListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(),
    body: ListView(
      children: List.generate(1000, (index) => Container(
        height: 100,
        color: Colors.green,
        child: const FlutterLogo(),
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5),

      )),
    )
   );
  }
}
