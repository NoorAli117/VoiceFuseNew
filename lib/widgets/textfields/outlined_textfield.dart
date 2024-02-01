// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../utils/helper/my_color.dart';

class lineTextfield extends StatefulWidget {
  lineTextfield({
    Key? key,
    required this.hintText,
    this.textController
  }) : super(key: key);
 TextEditingController? textController;
  String hintText;

  @override
  State<lineTextfield> createState() => _MyUnderlineTextfieldState();
}

class _MyUnderlineTextfieldState extends State<lineTextfield> {
  var _passwordVisible = true;

   void _toggle() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
     
    return TextFormField(
      controller: widget.textController,
      cursorColor: MyColor.blue1,
       decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey),
       ),
      // obscureText: _passwordVisible,
    ).pOnly(top: 10, bottom: 15);
  }
}
