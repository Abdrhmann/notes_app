import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_notes_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesState>
{
  AddNotesCubit() : super(AddNotesIntial());
  

  addNotes (NoteModel note) async
  {
     emit(AddNotesLoading());
     try {
    var notesBox = Hive.box<NoteModel>(kNotesBox); 
    emit(AddNotesSuccess());
    await notesBox.add(note);
    }  catch (e) {
     AddNotesFailer(errmessage: e.toString());  
   }
  }
}