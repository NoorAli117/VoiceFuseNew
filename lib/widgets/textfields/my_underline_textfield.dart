// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/helper/my_color.dart';

class MyUnderlineTextfield extends StatefulWidget {
  MyUnderlineTextfield({
    Key? key,
    required this.hintText,
    this.textController
  }) : super(key: key);
 TextEditingController? textController;
  String hintText;

  @override
  State<MyUnderlineTextfield> createState() => _MyUnderlineTextfieldState();
}

class _MyUnderlineTextfieldState extends State<MyUnderlineTextfield> {
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
      obscureText: _passwordVisible,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: MyColor.white1,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        suffixIcon: Icon(
          _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
          color: MyColor.black1,
        ).onTap(() {
           _toggle();
        }),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
    ).pOnly(top: 10, bottom: 15);
  }
}
