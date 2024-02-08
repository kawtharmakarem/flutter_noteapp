import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_noteapp/cubits/addnotes_cubit/cubit/add_notes_cubit.dart';
import 'package:flutter_noteapp/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit,AddNotesState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return AddNoteForm();
          },
        ),
      ),
    );
  }
}
