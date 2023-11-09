import 'package:flutter/material.dart';

class MyCointainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Center(
          child: Container(
            // si no se especifica las dimensiones del container, el container ocupara todo el espacio
            alignment: Alignment
                .center, // alineacion del contenido  dentro del container
            width: 200,

            /// este es el ancho del container
            height: 200, //altura del container
            decoration: BoxDecoration(
              // no se puede definir el color de Box decoration con el color fuera el y dentro de child:Center
              color: Color.fromARGB(255, 159, 163, 165), // color del container
              // borderRadius: BorderRadius.all(Radius.circular(10)), // este es el borde del container , con el only puedes hacer los bordes por cada esquina, definiendo los pixeles
              shape: BoxShape
                  .circle, // es lo mismo que borderradius pero de una manera mas sencilla
              gradient: LinearGradient(
                // hay otro gradiente que seria desde afuera hacia adentro del mismo container
                colors: const [
                  Colors.black,
                  Colors.red,
                ],
                begin: Alignment // esto es para el donde comienza la gradiente
                    .topLeft, // esto es para darle direccion a las gradientes
                end: Alignment.bottomCenter, // Donde termina la gradiente
              ),
              boxShadow: [
                BoxShadow(
                  // Esto seria lo que le viene dando sombra al container central,
                  offset: Offset(-5,
                      -3), // es la direccion que le das a la sombra hacia abajo con eje x e y y si los valores son negativos las sombras son harta arriba
                  color: const Color.fromARGB(255, 158, 54, 244)
                      .withOpacity(// Esta seria la opacidad de la sombra
                          0.55 // y este el porcentaje de la opacidad
                          ),
                  blurRadius:
                      10, // Este seria como el descgradado de la mezcla de los colores
                  // spreadRadius:
                  //   50, // la amplitud de sombra que rodea el container
                ),
                BoxShadow(
                  // Esto seria lo que le viene dando sombra al container central,
                  color: Color.fromARGB(255, 42, 12, 148)
                      .withOpacity(// Esta seria la opacidad de la sombra
                          0.55 // y este el porcentaje de la opacidad
                          ),
                  blurRadius: 10,
                ),
              ],
            ),
            padding: EdgeInsets.all(
                20), //estos son los margenes y no necesariamente tienes que agregar todos los parametros, depende de cada factory son los parametros que se le tiene que ingresar
            child: Text(
              'Pablo Reinoso',
              style: TextStyle(
                color: Colors.black, // este es el color del texto
              ),
            ),
          ),
        ),
      ),
    );
  }
}
