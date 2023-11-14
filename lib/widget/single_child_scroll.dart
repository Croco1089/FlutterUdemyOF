

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  
  const MySingleChildScrollView({super.key});
  @override
  Widget build(BuildContext context) {
    final containers = List.generate(18, (index) => Container(
                              height: 100,
                              alignment: Alignment.center,
                              color:Colors.primaries[index],
                              width: 100,
                              child: Text('$index'),),
                               
                        );
    return Scaffold(
      body: SafeArea(
        bottom: false,// esto es para qeu se vea el boton del celularo o dispositivo interno
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  const FlutterLogo(
                    size: 90
                  ),
                  Expanded(
                    child: Padding(// este widget es para darle una separacion a las columnas desde el borde

                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),// este parametro es para hacer un rebote en el scroll que esta horizontal
                        scrollDirection: Axis.horizontal,//Este parametro es para darle la direccion al scroll de manera horizontal 
                        child: Row(children: containers// Containers es la 
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Expanded(
              
              child: SingleChildScrollView(  // esto ayuda para hacr un scroll en la listas!!, por ende ayuda con el tema del los errores de overflow
                      //la altura del scrollview no puede tener dimesiones dinamicas ya que se somete al widget padre en este caso seria el scaffold
                     keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,// esto esconde el teclado cuando se hace el scroll 
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,// para ocupar todo el ancho de pared a pared
                  children:[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(),
                    ),
                    ...containers,
                  ],// este containers es la lista que se tipio antes del return scaffold y se reemplazo tanto
                  //para la lista vertical y horixzontal
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
