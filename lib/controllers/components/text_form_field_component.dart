import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors/app_colors.dart';

class TxtFormFieldComponent extends StatelessWidget {
  final String textHint;
  final TextEditingController appController;
  final IconData appIcons;
  const TxtFormFieldComponent(
      {super.key,
      required this.textHint,
      required this.appController,
      required this.appIcons});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.appPrimaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: appController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: textHint,
          hintStyle: TextStyle(color: AppColors.appWhiteColor),
          prefixIcon: Icon(
            appIcons,
            color: AppColors.appWhiteColor,
          ),
        ),
      ),
    );
  }
}
