import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    await Future.delayed(const Duration(milliseconds: 200));
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> note = notesBox.values.toList();
      emit(NotesSuccess(note));
    } catch (e) {
      emit(NotesFailure(
        errMessage: e.toString(),
      ));
    }
  }
}
