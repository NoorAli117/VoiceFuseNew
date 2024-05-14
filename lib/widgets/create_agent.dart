import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../utils/helper/my_color.dart';
import 'textfields/my_textfield.dart';
import 'texts/my_text.dart';

class CreateAgent extends StatelessWidget {
  final Function(int)? onOptionSelected;

  const CreateAgent({Key? key, this.onOptionSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: MyColor.white1,
      title: const Text(
        'Create a New Agent',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Agent Name'),
          MyTextField(
            hintText: 'Greatest Agent of All Time',
            validator: (value) => null,
          ),
          _buildSectionTitle('Choose Your Use Case:'),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: MyColor.grey2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                _buildOption(0, 'Sales'),
                const SizedBox(height: 8),
                const Divider(),
                const SizedBox(height: 8),
                _buildOption(1, 'Customer Service'),
              ],
            ).p(12),
          )
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return MyText(
      text: title,
      textStyle: TextStyle(
        color: MyColor.black1,
        fontSize: 14,
      ),
    );
  }

  Widget _buildOption(int index, String text) {
    return InkWell(
      onTap: () {
        if (onOptionSelected != null) onOptionSelected!(index);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: MyColor.colorBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.check_circle,
            color: MyColor.colorBlue,
          ),
        ],
      ),
    );
  }
}
