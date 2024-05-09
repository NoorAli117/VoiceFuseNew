import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:voice_fuse/utils/helper/app_helper.dart';
import 'package:voice_fuse/utils/helper/my_color.dart';
import 'package:voice_fuse/widgets/buttons/my_custom_rounded_button.dart';
import 'package:voice_fuse/widgets/texts/my_text.dart';

import '../../../routes/routes_name.dart';
import '../../../widgets/buttons/my_custom_button.dart';
import '../../../widgets/buttons/text_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
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
                MyText(
                  text: 'Congrats On Creating Your Account!',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: width * 0.028,
                    color: MyColor.black1,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.75,
                  child: MyText(
                    text:
                        'To Thank You For Being An Early Adopter, We Want To Give You 5 Free Conversations With Air...',
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.03,
                      color: MyColor.darkBlue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: height * 0.04),
                Container(
                  width: width * 0.75,
                  child: MyText(
                    text:
                        'All You Need To Do Is Verify Your Account Now Rather Than Later And You\'ll Be Able To Have 5 Separate Full-Length Calls With A.I. Completely Free And Experience The Magic Of Air For Yourself',
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: AppHelper.helper
                          .getResponsiveTextSize(width, baseSize: 20.0),
                      color: MyColor.black1,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.1),
                MyCustomButton(
                    onPressed: () => (),
                    text: 'Claim You 5 Free Calls',
                    width: 200,
                    height: 30,
                    textStyle: TextStyle(color: MyColor.white1),
                    color: MyColor.darkBlue),
                SizedBox(height: height * 0.01),
                MyTextButton(
                  onPressed: () => (print('pressed')),
                  text:
                      'No thanks. I\'d rather permanently give up my 5 free calls and just verify my account later',
                  textStyle: TextStyle(
                    decoration: TextDecoration.underline,
                    color: MyColor.darkBlue,
                    fontSize: 12,
                  ),
                  lineLimit: 2,
                  textAlign: TextAlign.center,
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
