import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomRoundedButton extends StatelessWidget {
  double width;
  double height;
  VoidCallback onPressed;
  TextStyle textStyle;
  String text;
  Color color;

  MyCustomRoundedButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.width,
    required this.height,
    required this.textStyle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height / 2),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          fixedSize: MaterialStateProperty.all<Size>(
            Size(width, height),
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(text, style: textStyle, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
