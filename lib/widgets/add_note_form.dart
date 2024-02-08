import 'package:flutter/material.dart';
import 'package:flutter_noteapp/widgets/custom_button.dart';

import 'custom_textfield.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title,subTitle;
  final GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;//show error for wrong input
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32,),
          CustomTextField(

            hintText: 'Title',
            onSaved: (value){
              title=value;
            },),
          const SizedBox(height: 16,),
          CustomTextField(hintText: 'Content',maxLines: 5,
          onSaved: (value){
            subTitle=value;
          },),
          const SizedBox(height: 32,),
          CustomButton(
            onTap: ()
            {
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(height: 16,)
        ],
      ),
    );
  }
}