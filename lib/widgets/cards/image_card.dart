
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;
  // final String text;

  const ImageCard({
    Key? key,
    required this.image,
    // required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.27,
      height: height * 0.13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
