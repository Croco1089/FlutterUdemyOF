import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTextStyle(
        style:
            TextStyle(), // las lineas celestes son solo advertencias por defecto

        child: Text(
          "Lorem Ipsum is simply dummy text "
          "of the printing and typesetting industry.",
          maxLines: 3, // muestra solo una linea de texto
          overflow: TextOverflow
              .ellipsis, // esto nos muestra que el texto no se esta mostrando completo y muestra los 3 puntos o cambio de color segun el parametro
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 123, 214, 128),
            decoration: TextDecoration.none,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
