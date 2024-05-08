import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_fuse/utils/helper/my_color.dart';

class MyCustomRoundedButton extends StatelessWidget {
  double width;
  double height;
  VoidCallback onPressed;
  TextStyle textStyle;
  String text1;
  String text2;
  Color color;

  MyCustomRoundedButton({
    super.key,
    required this.onPressed,
    required this.text1,
    required this.text2,
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
          child: Column(children: [
            Text(text1, style: textStyle, textAlign: TextAlign.center),
            Text(text2, style: TextStyle(fontSize: 10, color: MyColor.grey1), textAlign: TextAlign.center)
          ],)
        ),
      ),
    );
  }
}
