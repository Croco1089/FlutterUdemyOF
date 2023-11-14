// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // este widget es como de la estuctura ya definida según ciertos parametros
      //ademas todos los textos que definamos en el widget scaffold ya vienen por defecto por ende no necesitariamos poner el defaulsstyletext
      body: Container(
        color: Colors.lightBlue,
        // ignore: sort_child_properties_last
        child: const Column(
          children: [
            Expanded(
                child: Center(
                    child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(),
            ))),
            Text('Lallalalalalaa'),
            SizedBox(
              height: 50,
            ),
          ],
        ),
        width: double.infinity,
        height: double
            .infinity, // con este ancho se va a expandir todo lo que pueda
      ),
      resizeToAvoidBottomInset:
          false, // con esto las dimensiones de nuestro body no cambian y por ejemplo si el teclado del dispositivo
      //sube para ingresar, se tapan las demas visualizaciones
      // extendBodyBehindAppBar: true,// nuestro body estara detras de nuestra barra
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:
                  "Home"), //tenemos el boton  de navegacion de tipo icono, el tipo de icono,y el nombre del icono
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // este es una esfera botom a la cual se le puede agregar un icono al mismo
      drawer: const Drawer(
        elevation: 0,
        child: Column(
          children: [Text("Pablo Reinoso T.")],
        ),
      ),
      drawerEnableOpenDragGesture: false,
      onDrawerChanged: (isOpen) {
        print(isOpen);
      },
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons
                .add_box_outlined, // este es el tipo de icono que se esta utilizando
            size: 20,
          ),
          onPressed: () {
            print(":)");
          }),
      appBar: AppBar(
        actions: [
          // botones de accion en la appBar
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons
                  .logout)), // definicion del tipo de icono en la accion de la barra
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons
                  .settings)) // se define que es de apretar y el modelo del icono
        ],
        elevation: 10,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        backgroundColor: const Color(0xff01579b),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 25,
        ),
        title: const Row(
          children: [
            Text('Flutter   '),
            Text(
              'App',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
