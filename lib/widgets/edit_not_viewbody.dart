import 'package:flutter/material.dart';
import 'package:flutter_noteapp/widgets/custom_appbar.dart';
import 'package:flutter_noteapp/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50,),
          CustomAppBar(text: 'EditNote',icon: Icons.check,),
          const SizedBox(height: 50,),
          CustomTextField(hintText: 'Title'),
          const SizedBox(height: 16,),
          CustomTextField(hintText: 'Content',maxLines: 5,)
        ],
      ),
    );
  }
}