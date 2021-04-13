import 'package:flutter/material.dart';

// SCREEN_1
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/IMG_4679.jpeg');
    Image image = Image(image: assetImage,);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
            child: image,
          ),
        ),
      ),
    );
  }
}
