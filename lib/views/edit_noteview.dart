import 'package:flutter/material.dart';

import '../widgets/edit_not_viewbody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:EditNoteViewBody()
    );
  }
}