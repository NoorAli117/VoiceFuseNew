import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/routes_name.dart';
import '../../../utils/helper/app_helper.dart';
import '../../../utils/helper/my_color.dart';
import '../../../widgets/buttons/my_custom_button.dart';
import '../../../widgets/textfields/my_textfield.dart';
import '../../../widgets/texts/my_text.dart';

class AfterSignUp extends StatefulWidget {
  const AfterSignUp({super.key});

  @override
  State<AfterSignUp> createState() => _AfterSignUpState();
}

const List<String> scopes = <String>[
  'email',
  'https://www.googleapis.com/auth/contacts.readonly',
];

class _AfterSignUpState extends State<AfterSignUp> {
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
                          MyText(
                            text: 'Create Your Free Air Account',
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppHelper.helper
                                  .getResponsiveTextSize(width, baseSize: 18.0),
                            ),
                          ),
                          MyText(
                            text: 'Step 2 of 2: Basic Info',
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppHelper.helper
                                  .getResponsiveTextSize(width, baseSize: 18.0),
                            ),
                          ),
                          SizedBox(height: 20),
                          Divider(),
                          SizedBox(height: 20),
                          MyText(text: 'Email', textStyle: TextStyle()),
                          MyTextField(hintText: 'Enter Email Address'),
                          SizedBox(height: 10),
                          MyText(text: 'Password', textStyle: TextStyle()),
                          MyTextField(hintText: 'Enter Password'),
                        ],
                      ),
                      SizedBox(height: 30),
                      MyCustomButton(
                          onPressed: () => (Get.toNamed(CompanyInfoRoute)),
                          text: 'Contineu',
                          width: width,
                          height: 40,
                          textStyle: TextStyle(color: MyColor.white1),
                          color: MyColor.darkBlue),
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
