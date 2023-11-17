
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  const MyImages({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
      child: Container(
        width: 350,
        color: Colors.amber,
        child: CachedNetworkImage(
        imageUrl: "https://via.placeholder.com/350x150",
        placeholder: (_, __) => const Center(child: CircularProgressIndicator()),
        errorWidget: (_, __, ___) => const Icon(Icons.error),
     ),
      ) ,),
   );

  }
}
