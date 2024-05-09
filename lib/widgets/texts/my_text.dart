import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyText extends StatelessWidget {
  MyText({
    Key? key,
    required this.text,
    required this.textStyle,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final TextStyle textStyle;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
    );
  }
}
