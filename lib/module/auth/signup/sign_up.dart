import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_fuse/module/auth/signup/after_sign-up.dart';
import 'package:voice_fuse/module/auth/signup/signup_model.dart';
import 'package:voice_fuse/module/auth/signup/signup_view_model.dart';
import 'package:voice_fuse/utils/helper/my_color.dart';
import 'package:voice_fuse/widgets/buttons/my_custom_button.dart';
import 'package:voice_fuse/widgets/textfields/my_textfield.dart';
import 'package:voice_fuse/widgets/texts/my_text.dart';
import '../../../utils/helper/app_helper.dart';
import '../../../widgets/buttons/text_button.dart';
import '../../../widgets/my_custom_checkbox/customeCheckbox.dart';

class SigUp extends StatelessWidget {
  const SigUp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final controller = Get.put(SignUpViewModel());
    final _formKey = GlobalKey<FormState>();
    bool value = false;
    bool isAvailable;
    late bool valid_number = false;
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
                              text: 'Create Your Free Air Account',
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    AppHelper.helper.getResponsiveTextSize(
                                  width,
                                  baseSize: 18.0,
                                ),
                              ),
                            ),
                            MyText(
                              text: 'Step 1 of 2: Basic Info',
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    AppHelper.helper.getResponsiveTextSize(
                                  width,
                                  baseSize: 18.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Divider(),
                            SizedBox(height: 20),
                            MyText(text: 'Full Name', textStyle: TextStyle()),
                            MyTextField(
                              hintText: 'Enter Full Name',
                              textController: controller.fullNameController,
                              validator: (value) {
                                // Regex to validate full name with space between two aspirate words
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your full name';
                                } else if (!RegExp(
                                        r'^[a-zA-Z]+(?: [a-zA-Z]+)+$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid full name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            MyText(text: 'Phone', textStyle: TextStyle()),
                            MyTextField(
                              hintText: 'Enter Phone Number',
                              textController: controller.phoneController,
                              validator: (value) {
                                // Regex to validate phone number
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                } else if (!RegExp(r'^[0-9]{10}$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid phone number';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            if (valid_number)
                              MyText(
                                text: 'The number is already in use',
                                textStyle: TextStyle(color: Colors.red),
                              ),
                          ],
                        ),
                        CustomCheckboxWithText(
                          text:
                              'By checking this box, I give my consent that Voicefuse may contact me with offers at the phone number above including by text, (and since we are literally a conversational AI company) autodialer or artificial voice. I also agree to the terms of service and privacy policy. Consent not required for purchase :)',
                          value: value,
                          onChanged: (bool? newValue) {
                            if (newValue != null) {
                              // setState(() {
                              //   value = newValue;
                              // });
                            }
                          },
                        ),
                        SizedBox(height: 30),
                        MyCustomButton(
                          onPressed: () async {
                            String fullName =
                                controller.fullNameController.text;
                            String phone = controller.phoneController.text;
                            List<String> nameParts = fullName.split(" ");
                            var fname = nameParts[0]; // "John"
                            var lname =
                                nameParts.length > 1 ? nameParts[1] : "";
                            if (_formKey.currentState!.validate()) {
                              isAvailable = await controller.checkAvailability(
                                  contact: phone);
                              if (isAvailable) {
                                valid_number = false;
                                print('done');
                                controller.saveBasicInfo(
                                  SignUpModel(
                                      fname: fname,
                                      lname: lname,
                                      email: "",
                                      password: "",
                                      contact: phone),
                                );

                                Get.to(
                                  AfterSignUp(),
                                );
                              } else {
                                valid_number = true;
                                print('not done');
                              }
                            }
                          },
                          text: 'Continue',
                          width: width,
                          height: 40,
                          textStyle: TextStyle(color: MyColor.white1),
                          color: MyColor.darkBlue,
                        ),
                        SizedBox(height: 20),
                        MyTextButton(
                          onPressed: () {},
                          text: 'Or Login To Existing Account',
                          textStyle: TextStyle(
                            decoration: TextDecoration.underline,
                            color: MyColor.black1,
                            fontSize: 14,
                          ),
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
