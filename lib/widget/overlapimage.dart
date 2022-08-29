import 'package:flutter/material.dart';

class OverlapImage extends StatelessWidget {
  const OverlapImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
       children: [Expanded(
         child: Row(
           children: [
             Image.asset('image/final.png',
             height: 160,),
             Image.asset('image/yellow 1.png',
             height:86,),
           ],
         ),
       )]
    );
  }
}
