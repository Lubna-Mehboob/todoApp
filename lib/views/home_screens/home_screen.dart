import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors/app_colors.dart';
import 'package:todoapp/views/auth_screens/login_screen.dart';
import 'package:todoapp/views/home_screens/insert_data_screen/insert_todo_data.dart';
//import 'package:todoapp/views/auth_screens/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoDialogRoute(
                builder: (context) => const InsertData(), context: context),
          );
        },
        backgroundColor: AppColors.appPrimaryColor,
        child: Icon(
          Icons.add,
          color: AppColors.appWhiteColor,
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                CupertinoDialogRoute(
                    builder: (context) => const LoginScreen(),
                    context: context),
              );
            },
            icon: Icon(
              Icons.logout,
              color: AppColors.appWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
