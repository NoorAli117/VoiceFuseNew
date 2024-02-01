
import 'package:flutter/material.dart';
import '../../utils/helper/my_color.dart';
import '../../utils/helper/my_style.dart';
import '../texts/my_text.dart';

class BottomIcon extends StatefulWidget {
  BottomIcon({
    super.key,
    required this.onPressed,
    required this.name,
    required this.icon,
  });
  VoidCallback onPressed;
  String name;
  IconData icon;

  @override
  State<BottomIcon> createState() => _BottomIconState();
}

class _BottomIconState extends State<BottomIcon> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: Icon(
              widget.icon,
              color: MyColor.white1,
              size: height * 0.035,
            ),
            onPressed: widget.onPressed),
        MyText(text: widget.name, textStyle: MyStyle.white1_12_700)
      ],
    );
  }
}
