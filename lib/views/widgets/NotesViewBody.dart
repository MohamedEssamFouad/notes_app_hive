import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app_hive/views/widgets/custom_app_bar.dart';
import 'package:notes_app_hive/views/widgets/notes_list_view.dart';


class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:24.w ),
      child:  Column(
        children: [
          SizedBox(height: 50.h,),
          const CustomAppBar(
            iconData: Icons.search,
            title: "Notes",
          ),
          const Expanded(child: NotesListView()),

        ],
      ),
    );
  }
}
