import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/helper/my_color.dart';

class MyTextField extends StatefulWidget {
  MyTextField(
      {Key? key, required this.hintText, this.textController, this.validator})
      : super(key: key);

  final String hintText;
  final TextEditingController? textController;
  final FormFieldValidator<String>? validator; // Define the validator

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      cursorColor: MyColor.blue1,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: MyColor.white1,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
      validator: widget.validator, // Pass the validator to TextFormField
      onChanged: (_) {
        setState(() {}); // Trigger validation on every change
      },
    ).pOnly(top: 10, bottom: 15);
  }
}
