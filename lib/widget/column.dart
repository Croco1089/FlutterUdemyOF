import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: 50,
        ),
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Hola'),
                Text('Mundo',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15, // temaño del texto
                        fontWeight: FontWeight
                            .w500) // grosura del texto como la negrita
                    ),
                Container(
                  height: 100,
                  color: Colors.pinkAccent,
                ),
                Container(
                  height: 100,
                  color: Color.fromARGB(255, 92, 91, 178),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
