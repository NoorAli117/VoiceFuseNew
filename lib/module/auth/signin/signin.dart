import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_fuse/module/auth/signin/signin_view_model.dart';
import 'package:voice_fuse/module/auth/signup/signup_view_model.dart';
import 'package:voice_fuse/widgets/textfields/password_textfield.dart';
import '../../../utils/helper/app_helper.dart';
import '../../../utils/helper/my_color.dart';
import '../../../widgets/buttons/my_custom_button.dart';
import '../../../widgets/textfields/my_textfield.dart';
import '../../../widgets/texts/my_text.dart';
import '../../dashboard/home/home_view.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInViewModel());
    final width = MediaQuery.of(context).size.width;
    final _formKey = GlobalKey<FormState>();
    bool _obscurePassword = true;

    bool isAvailable = false;
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
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: 'Sign in',
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: AppHelper.helper
                                    .getResponsiveTextSize(width,
                                        baseSize: 18.0),
                              ),
                            ),
                            MyText(
                              text: 'to continue to Voice Fuse',
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: AppHelper.helper
                                    .getResponsiveTextSize(width,
                                        baseSize: 18.0),
                              ),
                            ),
                            SizedBox(height: 20),
                            Divider(),
                            SizedBox(height: 20),
                            MyText(text: 'Email', textStyle: TextStyle()),
                            MyTextField(
                              hintText: 'Email address',
                              textController: controller.emailController,
                              validator: (value) {
                                // Regex to validate email
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                } else if (!RegExp(
                                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                    .hasMatch(value)) {
                                  // Check if the value does not match the email pattern
                                  return 'Please enter a valid email';
                                }
                                // else if (isAvailable) {
                                //   // Check if the email is available
                                //   return 'The email is already in use';
                                // }
                                return null; // Return null if validation succeeds
                              },
                            ),
                            SizedBox(height: 10),
                            MyText(
                                text: 'Enter Password', textStyle: TextStyle()),
                            MyPasswordTextField(
                              hintText: 'Enter Password',
                              textController: controller.passwordController,
                              validator: (value) {
                                // Regex to validate the password
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (!RegExp(
                                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid password';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        MyCustomButton(
                          onPressed: () {
                            controller.basicInfor.value.email =
                                controller.emailController.text;
                            controller.basicInfor.value.password =
                                controller.passwordController.text;

                            // isAvailable = await controller.checkAvailability(
                            // value: controller.emailController.text) ??
                            // false;
                            if (_formKey.currentState!.validate()) {
                              controller.signIn(
                                  body: controller.basicInfor.value);
                            }
                          },
                          text: 'Continue',
                          width: width,
                          height: 40,
                          textStyle: TextStyle(color: MyColor.white1),
                          color: MyColor.darkBlue,
                        ),
                      ],
                    ),
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
