import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyText extends StatelessWidget {
  MyText({key, required this.text, required this.textStyle});
  String text;
  TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return text.text.textStyle(textStyle).make();
  }
}
