// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/helper/my_color.dart';

class DropDownTextfield extends StatefulWidget {
  DropDownTextfield({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;
  String? textController;

  @override
  State<DropDownTextfield> createState() => _DropDownTextfieldState();
}

class _DropDownTextfieldState extends State<DropDownTextfield> {
  @override
  Widget build(BuildContext context) {
    return 
     DropdownButtonFormField<String>( 
       // Use DropdownButtonFormField instead of DropdownButton
       decoration: InputDecoration(
        hintText: widget.hintText,
        
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: MyColor.grey1,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(5),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
        items: <String>['Male', 'Female', 'Other'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value) {
          widget.textController = value;
        },
      ).pOnly(top: 10, bottom: 15);
   
  }
}

