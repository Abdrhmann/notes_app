import 'package:notes_app/models/note_model.dart';
abstract class NotesStates {}
class NotesIntial extends NotesStates{}
class NotesLoading  extends NotesStates{}
class  NotesSuccess extends NotesStates{
  final List<NoteModel> notes;

  NotesSuccess({required this.notes});

}
class NotesFailer extends NotesStates{
   final String errMessage;
   NotesFailer(this.errMessage);
}