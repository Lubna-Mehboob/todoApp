import 'package:flutter/material.dart';

class PrimaryTxtComponent extends StatelessWidget {
  String 
  const PrimaryTxtComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'ToDo App',
      style: TextStyle(
        color: AppColors.appPrimaryColor,
      ),
    );
  }
}
