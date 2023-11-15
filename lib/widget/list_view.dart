

import 'package:flutter/material.dart';
import 'package:flutterdesdecasa/widget/list_view_builder.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            IconButton(onPressed: (){
             final route= MaterialPageRoute(builder:(_)=>MyListBuilder());
             Navigator.push(context,route);
            },
             icon: const Icon(Icons.login
            ),),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:List.generate(18, (index) => 
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.primaries[index],
                  child: Text('$index'),
                  alignment: Alignment.center,

                )),
                
              ),
            ),
           ListView(//Este widget, comparte algunoa parametros de single child scroll como por ejemplo la misma
              //funcion de scroll, el efecto resorte
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: 
              List.generate(5, (index) => Container(
                color:Colors.blue,
                height: 50,
                margin: const EdgeInsets.all(5),
              ))
                
                 ),
                 Container(
                  color:Colors.red,
                  height: 50,
                 ),
                 Container(
                  color:Colors.green,
                  height: 450,
                 )
          ],
        ),
      ),
    );
  }
}
