import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
  
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
          color:Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text('Flutter Tips',
              style: TextStyle(
                fontSize: 26,
                color: Colors.black
              ),
              ) ,
               subtitle: Padding(
                 padding: const EdgeInsets.only(top: 16,bottom: 16),
                 child: Text('Build your career with Tharwat samy',
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
              'May 21,2022',
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