import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            color: Colors.grey,
            width: 400,
            height: 500,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.lightGreen,
                ),
                Container(
                  width: 50,
                  height: 20,
                  color: Colors.redAccent,
                ),
                const Text("Hola"),
              ],
            ),
          ),
        ), // stack sirve para sobre poner las cosas sobre otras pero tiene un parametro children que es una lista y esta lista debe contener widgets
      ),
    );
  }
}
