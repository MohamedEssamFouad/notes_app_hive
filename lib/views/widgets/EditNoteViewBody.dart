import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app_hive/views/widgets/custom_app_bar.dart';
import 'package:notes_app_hive/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(height: 50.h,),
          CustomAppBar(title: "Edit Note",

              iconData: Icons.check),
          CustomTextField(hint: "Title"),
          SizedBox(height: 16.h,),
          CustomTextField(hint: "Content",maxLines: 5,),

        ],

      ),
    );
  }
}
