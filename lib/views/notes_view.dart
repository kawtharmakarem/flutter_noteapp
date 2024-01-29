import 'package:flutter/material.dart';

import '../widgets/add_note_bottomsheet.dart';
import '../widgets/noteview_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: NoteViewBody(),
    );
  }
}


