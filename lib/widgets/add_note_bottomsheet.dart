import 'package:flutter/material.dart';
import 'package:flutter_noteapp/widgets/custom_button.dart';
import 'package:flutter_noteapp/widgets/custom_textfield.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32,),
            CustomTextField(hintText: 'Title',),
            const SizedBox(height: 16,),
            CustomTextField(hintText: 'Content',maxLines: 5,),
            const SizedBox(height: 32,),
            CustomButton(),
            const SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}