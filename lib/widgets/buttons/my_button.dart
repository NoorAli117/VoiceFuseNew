import 'package:flutter/material.dart';

import '../../utils/helper/my_color.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;

  const MyButton({super.key, 
    required this.onPressed,
    required this.text,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(MyColor.blue1),
        foregroundColor: MaterialStateProperty.all<Color>(MyColor.white1),
        fixedSize: MaterialStateProperty.all<Size>(
          Size(width ?? size.width, 30),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return states.contains(MaterialState.hovered)
                ? MyColor.blue1.withOpacity(0.8) // Adjust opacity for hover effect
                : MyColor.transparent; // Set the transparent color when not hovered
          },
        ),
        elevation: MaterialStateProperty.all<double>(4), // Add a subtle shadow
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: MyColor.blue1, // Border color same as button color
            ),
          ),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}