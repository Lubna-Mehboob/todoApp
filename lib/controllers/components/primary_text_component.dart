import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors/app_colors.dart';

class PrimaryTxtComponent extends StatelessWidget {
  final String appText;
  const PrimaryTxtComponent({super.key, required this.appText});

  @override
  Widget build(BuildContext context) {
    return Text(
      appText,
      style: TextStyle(
        color: AppColors.appPrimaryColor,
      ),
    );
  }
}
