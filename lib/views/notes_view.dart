import 'package:flutter/material.dart';
import 'package:notes_app_hive/views/widgets/NotesViewBody.dart';
import 'package:notes_app_hive/views/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.teal,
        onPressed: (){
          showModalBottomSheet(

              context: context,
              builder: (context){
            return const AddNoteBottomSheet();
              });
        }
      ,
      child: Icon(Icons.add),
      ),
    );
  }
}

