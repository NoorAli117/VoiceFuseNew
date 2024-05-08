import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  double width;
  double height;
  VoidCallback onPressed;
  TextStyle textStyle;
  String text;
  Color color;
  MyCustomButton({super.key, 
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
          backgroundColor: MaterialStateProperty.all<Color>(color),
          fixedSize: MaterialStateProperty.all<Size>(
            Size(width, height),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0), // Set corner radius to 5
            ),
          ),
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}