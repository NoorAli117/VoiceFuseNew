import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:voice_fuse/routes/routes_name.dart';
import 'package:voice_fuse/widgets/buttons/text_button.dart';
import 'package:voice_fuse/widgets/textfields/my_dropdown_textfield.dart';

import '../../../utils/helper/app_helper.dart';
import '../../../utils/helper/my_color.dart';
import '../../../widgets/buttons/my_custom_button.dart';
import '../../../widgets/textfields/my_textfield.dart';
import '../../../widgets/texts/my_text.dart';

class InviteTeam extends StatefulWidget {
  const InviteTeam({super.key});

  @override
  State<InviteTeam> createState() => Invite_TeamState();
}

class Invite_TeamState extends State<InviteTeam> {
  @override
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
                            text: 'Invite team members',
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppHelper.helper
                                  .getResponsiveTextSize(width, baseSize: 18.0),
                            ),
                          ),
                          SizedBox(height: 20),
                          MyText(
                              text: 'Email addresses', textStyle: TextStyle()),
                          MyText(
                              text:
                                  'Enter or paste one or more email addresses, separated by spaces or commas',
                              textStyle: TextStyle(
                                  color: MyColor.grey2, fontSize: 10)),
                          MyTextField(hintText: 'Enter Company name'),
                          MyText(text: 'Role', textStyle: TextStyle()),
                          Container(
                              width: 150,
                              child: DropDownTextfield(
                                  hintText: "Select an option"))
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyTextButton(
                              onPressed: () => (Get.toNamed(HomeRoute)),
                              text: 'skip',
                              textStyle: TextStyle(color: MyColor.lightBlue)),
                          MyCustomButton(
                              onPressed: () => (),
                              text: 'Contineu',
                              width: 200,
                              height: 40,
                              textStyle: TextStyle(color: MyColor.white1),
                              color: MyColor.darkBlue),
                        ],
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
