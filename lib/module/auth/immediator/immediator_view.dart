import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:voice_fuse/utils/helper/app_helper.dart';
import 'package:voice_fuse/utils/helper/my_color.dart';
import 'package:voice_fuse/widgets/buttons/my_custom_rounded_button.dart';

import '../../../routes/routes_name.dart';
import '../../../widgets/buttons/text_button.dart';
import '../signup/sign_up.dart';

class ImmediatorView extends StatelessWidget {
  const ImmediatorView({super.key});

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: height * 0.04),
                GradientText(
                  'It\'s finally here...',
                  textAlign: TextAlign.center,
                  gradientDirection: GradientDirection.ttb,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.028,
                    color: MyColor.darkBlue,
                  ),
                  colors: [
                    MyColor.darkBlue,
                    MyColor.lightBlue,
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.75,
                  child: GradientText(
                    '100,000 sales and customer service reps at the tap of a button.',
                    textAlign: TextAlign.center,
                    gradientDirection: GradientDirection.ttb,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04,
                      color: MyColor.darkBlue,
                    ),
                    colors: [
                      MyColor.darkBlue,
                      MyColor.lightBlue,
                    ],
                  ),
                ),
                SizedBox(height: height * 0.04),
                Container(
                  width: width * 0.75,
                  child: Text(
                    'Introducing the world\'s first ever AI that can have full on 10-40 minute long phone calls that sound like a REAL human, with infinite memory, perfect recall, and can autonomously take actions across 5,000 plus applications. It can do the entire job of a full time agent without having to be trained, managed or motivated. It just works 24/7/365.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: AppHelper.helper
                          .getResponsiveTextSize(width, baseSize: 20.0),
                      color: MyColor.grey2,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.4),
                MyCustomRoundedButton(
                  onPressed: () => (Get.to(const SigUp())),
                  text1: 'Create Your Free Account',
                  text2: 'and join 70,000+ businesses',
                  width: 300,
                  height: 70.0,
                  textStyle: TextStyle(color: MyColor.white1),
                  color: MyColor.darkBlue,
                ),
                SizedBox(height: height * 0.01),
                MyTextButton(
                  onPressed: () => (print('pressed')),
                  text: 'Or Login To Existing Account',
                  textStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    color: MyColor.black1,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: height * 0.1),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    MyTextButton(
                      onPressed: () => (print('pressed')),
                      text: '© 2023 Air AI, LLC.',
                      textStyle: TextStyle(
                        color: MyColor.grey2,
                        fontSize: 10,
                      ),
                    ),
                    MyTextButton(
                      onPressed: () => (print('pressed')),
                      text: 'Privacy Policy',
                      textStyle: TextStyle(
                        color: MyColor.grey2,
                        fontSize: 10,
                      ),
                    ),
                    MyTextButton(
                      onPressed: () => (print('pressed')),
                      text: 'Terms of Services',
                      textStyle: TextStyle(
                        color: MyColor.grey2,
                        fontSize: 10,
                      ),
                    ),
                    MyTextButton(
                      onPressed: () => (print('pressed')),
                      text: 'Need help? Email Support@air.ai',
                      textStyle: TextStyle(
                        color: MyColor.grey2,
                        fontSize: 10,
                      ),
                    ),
                    MyTextButton(
                      onPressed: () => (print('pressed')),
                      text: 'Find us on LinkedIn',
                      textStyle: TextStyle(
                        color: MyColor.grey2,
                        fontSize: 10,
                      ),
                    ),
                    MyTextButton(
                      onPressed: () => (print('pressed')),
                      text: 'Refund & Cancelation Policy',
                      textStyle: TextStyle(
                        color: MyColor.grey2,
                        fontSize: 10,
                      ),
                    ),
                    MyTextButton(
                      onPressed: () => (print('pressed')),
                      text: '© 2023 Air AI, LLC.',
                      textStyle: TextStyle(
                        color: MyColor.grey2,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
