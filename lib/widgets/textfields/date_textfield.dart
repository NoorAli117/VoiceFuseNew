// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../utils/helper/my_color.dart';

class DateTextField extends StatefulWidget {
  DateTextField({
    Key? key,
    required this.hintText,
    required this.textEditingController
  }) : super(key: key);

  String hintText;
  
  TextEditingController textEditingController;

  @override
  State<DateTextField> createState() => _DateTextField();
}

class _DateTextField extends State<DateTextField> {
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textEditingController,
     onTap: () {
            _selectDate(context);
          },
      cursorColor: MyColor.blue1,
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
    ).pOnly(top: 10, bottom: 15);
    
  }
   _selectDate(BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate ?? DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2040),
        
        );

    if (newSelectedDate != null) {
      _selectedDate = newSelectedDate;
      widget.textEditingController
        ..text = DateFormat("yyyy-MM-dd").format(_selectedDate!)
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: widget.textEditingController.text.length,
            affinity: TextAffinity.upstream));
    }
  }
}
