import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
  final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context){
             return const EditNoteView();
         }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16) ,
        decoration: BoxDecoration(
          color:Color(notes.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(notes.title,
              style: TextStyle(
                fontSize: 26,
                color: Colors.black
              ),
              ) ,
               subtitle: Padding(
                 padding: const EdgeInsets.only(top: 16,bottom: 16),
                 child: Text(notes.subtitle,
                  style: TextStyle(
                  color: Colors.black.withValues(alpha:.5 ),
                  fontSize: 18,
                             ),
                             ),
               ),
              trailing: IconButton(
                onPressed: (){}, 
                icon: Icon(FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
              notes.date,
              style: TextStyle(
                fontSize: 16,
              color: Colors.black.withValues(alpha: .4)
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}