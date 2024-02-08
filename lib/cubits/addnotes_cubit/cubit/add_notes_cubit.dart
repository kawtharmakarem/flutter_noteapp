import 'package:bloc/bloc.dart';
import 'package:flutter_noteapp/constants.dart';
import 'package:flutter_noteapp/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async
  {
    emit(AddNotesLoading());

   try {
  var notesBox= Hive.box<NoteModel>(kNotesBox);//fetch box
    await notesBox.add(note);  
    emit(AddNotesSuccess());
} catch (e) {
  AddNotesFailure(errorMessage: e.toString());
}
  }
  
}
