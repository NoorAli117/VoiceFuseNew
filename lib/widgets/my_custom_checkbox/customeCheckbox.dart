import 'package:flutter/material.dart';

import '../../utils/helper/my_color.dart';
import '../../utils/helper/my_style.dart';
import '../texts/my_text.dart';

class CustomCheckboxWithText extends StatefulWidget {
  final String text;
  final bool value;
  final void Function(bool?)? onChanged; // Change type to accept bool?

  const CustomCheckboxWithText({
    Key? key,
    required this.text,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckboxWithTextState createState() => _CustomCheckboxWithTextState();
}

class _CustomCheckboxWithTextState extends State<CustomCheckboxWithText> {
  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: widget.value,
            onChanged: widget.onChanged,
          ),
          Expanded(
            child: MyText(
              text: widget.text,
              textStyle: TextStyle(
                fontSize: 14,
                color: MyColor.black1,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
    );
  }
}