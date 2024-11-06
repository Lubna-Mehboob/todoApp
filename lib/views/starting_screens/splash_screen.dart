import 'package:flutter/material.dart';
import 'package:todoapp/constants/app_assets/images.dart';
import 'package:todoapp/constants/colors/app_colors.dart';
import 'package:todoapp/controllers/components/image_component.dart';
import 'package:todoapp/controllers/components/primary_text_component.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageComponent(appImage: AppImages.splashImage),
            const PrimaryTxtComponent(
              appText: 'ToDo Application',
            )
            // Image.asset(
            //   AppImages.splashImage,
            //   height: 200,
            // ),
            // Text(
            //   'ToDo App',
            //   style: TextStyle(
            //     color: AppColors.appPrimaryColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
