import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../routes/routes_name.dart';
import '../../../utils/helper/app_helper.dart';
import '../../../utils/helper/my_color.dart';
import '../../../widgets/buttons/my_custom_button.dart';
import '../../../widgets/textfields/my_textfield.dart';
import '../../../widgets/texts/my_text.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({super.key});

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
                            text: 'What\'s the name of your company?',
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppHelper.helper
                                  .getResponsiveTextSize(width, baseSize: 18.0),
                            ),
                          ),
                          SizedBox(height: 20),
                          MyText(text: 'Company name', textStyle: TextStyle()),
                          MyTextField(hintText: 'Enter Company name'),
                        ],
                      ),
                      SizedBox(height: 30),
                      MyCustomButton(
                          onPressed: () => (Get.toNamed(InviteTeamRoute)),
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
