import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:voice_fuse/utils/helper/my_color.dart';
import 'package:voice_fuse/widgets/buttons/my_custom_rounded_button.dart';

import '../../../widgets/buttons/text_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GradientText(
                'It\'s finally here...',
                textAlign: TextAlign.center,
                gradientDirection: GradientDirection.ttb,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: width * 0.028,
                ),
                colors: [
                  MyColor.darkBlue,
                  MyColor.lightBlue,
                ],
              ),
              Container(
                width: width * 0.9,
                child: Divider(
                  color: MyColor.darkBlue,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: width * 0.9,
                child: GradientText(
                  '100,000 sales and customer service reps at the tap of a button.',
                  textAlign: TextAlign.center,
                  gradientDirection: GradientDirection.ttb,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.05,
                  ),
                  colors: [
                    MyColor.darkBlue,
                    MyColor.lightBlue,
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                width: width * 0.9,
                child: const Text(
                  'Introducing the world\'s first ever AI that can have full on 10-40 minute long phone calls that sound like a REAL human, with infinite memory, perfect recall, and can autonomously take actions across 5,000 plus applications. It can do the entire job of a full time agent without having to be trained, managed or motivated. It just works 24/7/365.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              MyCustomRoundedButton(
                  onPressed: () => (print('button pressed')),
                  text: 'Create You Free Account',
                  width: width * 0.4,
                  height: 70.0,
                  textStyle: TextStyle(color: MyColor.white1),
                  color: MyColor.darkBlue),
              SizedBox(
                height: height * 0.01,
              ),
              MyTextButton(
                onPressed: () => (print('pressed')),
                text: 'Or Login To Existing Account',
                textStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    color: MyColor.black1,
                    fontSize: 12),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
