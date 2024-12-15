import 'package:flutter/material.dart';
import 'package:lab/custom_button.dart';

class CustomRow extends StatelessWidget {
  final String btnText1;
  final String btnText2;
  final String btnText3;
  final String btnText4;
  final TextEditingController rowController;

  const CustomRow({
    super.key,
    required this.btnText1,
    required this.btnText2,
    required this.btnText3,
    required this.btnText4,
    required this.rowController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            buttonText: btnText1,
            btnController: rowController,
          ),
          CustomButton(
            buttonText: btnText2,
            btnController: rowController,
          ),
          CustomButton(
            buttonText: btnText3,
            btnController: rowController,
          ),
          CustomButton(
            buttonText: btnText4,
            btnController: rowController,
          ),
        ],
      ),
    );
  }
}
