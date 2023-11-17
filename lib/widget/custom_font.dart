


import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry.
             Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
             when an unknown printer took a galley of type and scrambled it to make a type specimen book.
              It has survived not only five centuries, but also the leap into electronic typesetting,
               remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
               and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Why do we use it?
              It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
               The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here,
                content here', making it look like readable English  lklk.
            
''', 
style: TextStyle(fontFamily: ('Titillium')),)// para lograr hacer el cambio de fuentes del sistema tienes que agregarlas directamente en el archivo pubspect.yaml
//aparece ahi mismo el modelo de coo acerlo, no sin antes agrefgar una carpeta a la carpeta princi´pal del proyecto agregando los tipos de fuentes con el nombrew assets
          ],
        )
         ),
    );
  }
}
