import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_buttom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context, 
            builder: (context){
              return const AddNoteButtomSheet();
            });
        } , 
        child:const
         Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}
