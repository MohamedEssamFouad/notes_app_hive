import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app_hive/views/notes_view.dart';

import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 16.h),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,

          itemBuilder: (context,index){
        return Padding(
          padding:  EdgeInsets.symmetric(vertical: 8.h),
          child: NoteItem(),
        );
      }),
    );
  }
}
