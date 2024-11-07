//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:todoapp/constants/app_assets/images.dart';
import 'package:todoapp/constants/colors/app_colors.dart';
import 'package:todoapp/controllers/components/image_component.dart';
import 'package:todoapp/controllers/components/primary_text_component.dart';
import 'package:todoapp/controllers/components/text_form_field_component.dart';
//import 'package:todoapp/views/auth_screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //bool isLoading = false; //value is false at the start
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //image Component-------------------------------------
            ImageComponent(appImage: AppImages.loginImage),
            const SizedBox(
              height: 10,
            ),
            // Text Component------------------------------------
            const PrimaryTxtComponent(
              appText: 'Welcome Onboard!',
              appTextSize: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            //Text Component---------------------------------
            const PrimaryTxtComponent(
              appText: 'Lets help you in completing your tasks',
              appTextSize: 12,
            ),
            const SizedBox(
              height: 20,
            ),
            //Container or TextFormField Component--------------------------
            TxtFormFieldComponent(
              textHint: 'Enter Your Full Name',
              appController: _userNameController,
              appIcons: Icons.person,
            ),
            TxtFormFieldComponent(
              textHint: 'Enter Your Email',
              appController: _emailController,
              appIcons: Icons.email_outlined,
            ),
            TxtFormFieldComponent(
              textHint: 'Enter Your Password',
              appController: _passwordController,
              appIcons: Icons.lock,
              isTextObscure: true,
            ),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 20),
            //   decoration: BoxDecoration(
            //     color: AppColors.appPrimaryColor,
            //     borderRadius: BorderRadius.circular(5),
            //   ),
            //   child: TextFormField(
            //     controller: _userNameController,
            //     decoration: InputDecoration(
            //       border: InputBorder.none,
            //       hintText: 'Enter Your Full Name',
            //       hintStyle: TextStyle(color: AppColors.appWhiteColor),
            //       prefixIcon: Icon(
            //         Icons.person,
            //         color: AppColors.appWhiteColor,
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text(
    //       'Registration Screen',
    //       style: TextStyle(color: Colors.white),
    //     ),
    //     backgroundColor: Colors.blue,
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         //TextFormField for email address---------------
    //         TextFormField(
    //           controller: _emailController,
    //           decoration: const InputDecoration(
    //             hintText: 'Enter your Email',
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         //TextForm Field for password-------------------
    //         TextFormField(
    //           controller: _passwordController,
    //           decoration: const InputDecoration(
    //             hintText: 'Enter your Password',
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),

    //         //Conatiner Button-----------------------
    //         isLoading
    //             ? const CircularProgressIndicator()
    //             : InkWell(
    //                 onTap: () async {
    //                   isLoading = true;
    //                   setState(() {});
    //                   await FirebaseAuth.instance
    //                       .createUserWithEmailAndPassword(
    //                           email: _emailController.text.trim(),
    //                           password: _passwordController.text.trim())
    //                       .then((value) {
    //                     //successful-------------
    //                     isLoading = false;
    //                     setState(() {});
    //                     Get.defaultDialog(
    //                         title: 'Successful',
    //                         content: const Text('Account created successfuly'),
    //                         actions: [
    //                           TextButton(
    //                             onPressed: () {
    //                               //Get.back();
    //                               Navigator.push(
    //                                 context,
    //                                 CupertinoPageRoute(
    //                                   builder: (context) => const LoginScreen(),
    //                                 ),
    //                               );
    //                             },
    //                             child: const Text('OK'),
    //                           ),
    //                         ]);
    //                     // Get.snackbar(
    //                     //   'Successful',
    //                     //   'Account created successfully',
    //                     //   backgroundColor: Colors.blue.shade400.withOpacity(0.8),
    //                     // );
    //                   }).onError((error, value) {
    //                     isLoading = false;
    //                     setState(() {});
    //                     Get.snackbar('$error', '$value');
    //                   });
    //                 },
    //                 child: Container(
    //                   height: 40,
    //                   width: 150,
    //                   decoration: BoxDecoration(
    //                     color: Colors.blue,
    //                     borderRadius: BorderRadius.circular(10),
    //                   ),
    //                   child: const Center(
    //                     child: Text(
    //                       'Register',
    //                       style: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 20,
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
