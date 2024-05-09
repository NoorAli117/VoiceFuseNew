import 'package:flutter/material.dart';

import '../../utils/helper/my_color.dart';

class MyTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;
  final TextStyle textStyle;
  final int? lineLimit; // Optional lineLimit parameter
  final TextAlign? textAlign; // Optional textAlign parameter

  const MyTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.width,
    required this.textStyle,
    this.lineLimit, // Initialize lineLimit parameter
    this.textAlign, // Initialize textAlign parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (states) => states.contains(MaterialState.hovered)
              ? MyColor.blue1.withOpacity(0.1)
              : MyColor.transparent,
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: textStyle,
          maxLines: lineLimit, // Apply lineLimit if provided
          textAlign: textAlign, // Apply textAlign if provided
        ),
      ),
    );
  }
}
