import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            ),
            Spacer(), // agrega todo el espacio disponible que habia en el rog
            FlutterLogo(
              size: 100,
            ),
            Spacer(),
            FlutterLogo(
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
// hay un width de parametro double.infinity
//CrossAxisAlignment:CrossAxisAlignment.start-- es para alinear los containers o las cajitas que tenemos en la pantalla
//con el fin que a medida que se va ajustando la pagina por la cual estamos viendo.
