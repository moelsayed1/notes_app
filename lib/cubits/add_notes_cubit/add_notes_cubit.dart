import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Color color = const Color(0xffF0A202);

  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesLoading());
    await Future.delayed(const Duration(milliseconds: 200));
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(
        AddNotesFailure(
          errMessage: e.toString(),
        ));
    }
  }
}
