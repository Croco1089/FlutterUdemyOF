
import 'package:flutter/material.dart';


class MyListBuilder extends StatelessWidget{
  const MyListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
   const  names= ["Pablo","Andres","Reinoso","Torres"];
   return Scaffold(
    appBar: AppBar(),
    body: ListView.separated(itemBuilder: (BuildContext _, int index) {// este es un factoryconstructor que ayuda a la renderizacion de las vista, a medida que se 
    // va haciendo el scroll se va actualizando la info del sistema// y se va actualizando segun el tamaño de los containers y sized box etc
        print("Hola");
        return Container(
        height: 100,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5),
        // color: Colors.green,
        child:  Text("${names[index]}"),
        );
      },
    itemCount: names.length, separatorBuilder: (_, int index) { // separated bulder genera una linea divisora en el la lista y esa linea se puede cambiar de color u darle altura o grosor
    return Container(
      height: 1,
      color:Colors.red
    );
      
      },
    ),
   );
   
      }
    }

