abstract class AddNotesState {}
class AddNotesIntial extends AddNotesState{}
class AddNotesLoading extends AddNotesState{}
class AddNotesSuccess extends AddNotesState{}
class AddNotesFailer extends AddNotesState{
  final String errmessage ;

  AddNotesFailer({required this.errmessage}); 
}