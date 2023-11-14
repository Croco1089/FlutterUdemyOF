

import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:  Container(
      color: Colors.grey,
      width: double.infinity,
      height: double.infinity,
      child: const SafeArea(
        child: Column(
          children: [
                      Text('Hola'),
          ],
        ),
      ),
      
    ),
  );
  }
}
