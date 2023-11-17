import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoSearchTextField(),
            CupertinoActivityIndicator(),
            Icon(CupertinoIcons.ant,
            size: 50,

            ),
          ],
        ),
      )

    );
  }
}
