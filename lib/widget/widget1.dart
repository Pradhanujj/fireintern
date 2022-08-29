import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key,required this.imagePath,required this.imagePath1}) : super(key: key);

  final String imagePath;
  final String imagePath1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: MediaQuery.of(context).padding),
          Container(
           child: Image.asset(imagePath)),
          Expanded(
            flex:1,
            child: Container(
              decoration:  BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image:AssetImage(imagePath1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }
}
