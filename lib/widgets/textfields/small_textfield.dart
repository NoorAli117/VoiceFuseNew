// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../utils/helper/my_color.dart';



class SmallTextfield extends StatefulWidget {
  SmallTextfield({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  String hintText;

  @override
  State<SmallTextfield> createState() => _SmallTextfield();
}

class _SmallTextfield extends State<SmallTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // textAlign: TextAlign.left,
      keyboardType: TextInputType.multiline,
      cursorColor: MyColor.blue1,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: MyColor.grey1),
        // filled: true,
        // fillColor: Colors.grey[350],
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColor.black1),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColor.black1),
          borderRadius: BorderRadius.circular(5),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        // isCollapsed: true,
        alignLabelWithHint: true,
      ),
    );
  }
}
