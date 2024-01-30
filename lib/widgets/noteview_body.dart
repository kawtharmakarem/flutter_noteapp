import 'package:flutter/material.dart';
import 'package:flutter_noteapp/widgets/custom_appbar.dart';
import 'package:flutter_noteapp/widgets/notes_listview.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          CustomAppBar(text: 'Notes',icon: Icons.search,),
         Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

