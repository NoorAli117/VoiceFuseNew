import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:voice_fuse/utils/helper/my_color.dart';
import 'package:voice_fuse/widgets/buttons/my_custom_button.dart';
import 'package:voice_fuse/widgets/textfields/my_textfield.dart';
import 'package:voice_fuse/widgets/texts/my_text.dart';

import '../../../routes/routes_name.dart';
import '../../../utils/helper/app_helper.dart';
import '../../../widgets/buttons/text_button.dart';
import '../../../widgets/my_custom_checkbox/customeCheckbox.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = false;

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        // Background image or color
        Container(
          width: double.infinity,
          height: double.infinity,
          // Replace this with your background image or color
          color: MyColor.white1,
        ),
        // Blurred background
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0), // Transparent background
            ),
          ),
        ),
        // Card content
        SingleChildScrollView(
          child: Center(
            child: Container(
              width: 450,
              child: Card(
                color: MyColor.white1,
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(text: 'Create Your Free Air Account', textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: AppHelper.helper.getResponsiveTextSize(width, baseSize: 18.0))),
                          MyText(text: 'Step 1 of 2: Basic Info', textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: AppHelper.helper.getResponsiveTextSize(width, baseSize: 18.0))),
                          SizedBox(height: 20),
                          Divider(),
                          SizedBox(height: 20),
                          MyText(text: 'Full Name', textStyle: TextStyle()),
                          MyTextField(hintText: 'Enter Full Name'),
                          SizedBox(height: 10),
                          MyText(text: 'Phone', textStyle: TextStyle()),
                          MyTextField(hintText: 'Enter Phone Number'),
                        ],
                      ),
                      CustomCheckboxWithText(
                        text:
                            'By checking this box, I give my consent that Voicefuse may contact me with offers at the phone number above including by text, (and since we are literally a conversational AI company) autodialer or artificial voice. I also agree to the terms of service and privacy policy. Consent not required for purchase :)',
                        value: value,
                        onChanged: (bool? newValue) {
                          if (newValue != null) {
                            setState(() {
                              value = newValue;
                            });
                          }
                        },
                      ),
                      SizedBox(height: 30),
                      MyCustomButton(onPressed:() => (Get.toNamed(AfterSignUpRoute)), text: 'Contineu', width: width, height: 40, textStyle: TextStyle(color: MyColor.white1), color: MyColor.darkBlue),
                      SizedBox(height: 20),
                      MyTextButton(
                                        onPressed: () => (print('pressed')),
                                        text: 'Or Login To Existing Account',
                                        textStyle: TextStyle(
                      decoration: TextDecoration.underline,
                      color: MyColor.black1,
                      fontSize: 14),
                                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
