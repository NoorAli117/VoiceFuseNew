

import 'package:flutter/material.dart';
import 'package:voice_fuse/utils/helper/my_style.dart';

import '../../../widgets/texts/my_text.dart';

class ImmediatorView extends StatelessWidget {
  const ImmediatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Column(children: [
      MyText(text: 'Farooq', textStyle: MyStyle.black1_12_000,)
    ],),);
  }
}