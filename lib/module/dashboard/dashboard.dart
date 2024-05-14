import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:voice_fuse/widgets/create_agent.dart';
import '../../utils/helper/app_helper.dart';
import '../../utils/helper/my_color.dart';
import '../../widgets/buttons/my_custom_button.dart';
import '../../widgets/textfields/my_textfield.dart';
import '../../widgets/texts/my_text.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: height * 0.04),
                Container(
                  width: width * 0.75,
                  child: GradientText(
                    'Welcome, :)',
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
                const SizedBox(height: 10),
                Container(
                  width: width * 0.75,
                  child: MyText(
                    text:
                        'To get started, create your first AI agent by clicking the button below. Once you create your agent, you can place it on live calls in minutes.',
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CreateAgent();
                      },
                    );
                  },
                  text: 'Create AI Agent',
                  width: 200,
                  height: 30,
                  textStyle: TextStyle(color: MyColor.white1),
                  color: MyColor.darkBlue,
                ),
                SizedBox(height: height * 0.01),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
