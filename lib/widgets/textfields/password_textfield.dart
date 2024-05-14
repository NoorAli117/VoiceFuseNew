import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../utils/helper/my_color.dart';

class MyPasswordTextField extends StatefulWidget {
  MyPasswordTextField({
    Key? key,
    required this.hintText,
    this.textController,
    this.validator,
  }) : super(key: key);

  final String hintText;
  final TextEditingController? textController;
  final FormFieldValidator<String>? validator;

  @override
  State<MyPasswordTextField> createState() => _MyPasswordTextFieldState();
}

class _MyPasswordTextFieldState extends State<MyPasswordTextField> {
  late bool _obscurePassword; // Initialize this variable

  @override
  void initState() {
    super.initState();
    _obscurePassword = true; // Set initial state for password visibility
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      cursorColor: MyColor.blue1,
      obscureText: _obscurePassword, // Use _obscurePassword here
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
        suffixIcon: IconButton(
          icon: Icon(
            _obscurePassword ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _obscurePassword = !_obscurePassword;
            });
          },
        ),
      ),
      validator: widget.validator,
      onChanged: (_) {
        setState(() {}); // Trigger validation on every change
      },
    ).pOnly(top: 10, bottom: 15);
  }
}
