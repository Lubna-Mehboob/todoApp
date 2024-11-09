import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors/app_colors.dart';
import 'package:todoapp/controllers/components/custom_button_component.dart';
import 'package:todoapp/controllers/components/primary_text_component.dart';
import 'package:todoapp/controllers/components/text_form_field_component.dart';

class InsertData extends StatefulWidget {
  const InsertData({super.key});

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // Crete a funtion to insert data into real_time Database-------------------------

  insertYourData() async {
    await FirebaseFirestore.instance.collection('todo').add({
      //key : value
      //Field : value
      'title': _titleController,
      'description': _descriptionController,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appPrimaryColor,
        title: Text(
          'Insert your Data',
          style: TextStyle(
              color: AppColors.appWhiteColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            //Text------------------------------
            const PrimaryTxtComponent(
              appText: 'Insert your Data',
              appTextSize: 30,
            ),
            const SizedBox(
              height: 15,
            ),
            //Custom TextFormField 1----------------------
            TxtFormFieldComponent(
              textHint: 'Enter Title',
              appController: _titleController,
            ),
            //Custom TextFormField 1----------------------
            TxtFormFieldComponent(
                textHint: 'Enter Description',
                appController: _descriptionController),
            const SizedBox(
              height: 15,
            ),
            //Custom Button ----------------------
            ButtonComponent(
                buttonText: 'Add',
                onbuttonTap: () {
                  insertYourData();
                })
          ],
        ),
      ),
    );
  }
}
