import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app_hive/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.iconData});
  final String title;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28.sp,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          iconData: iconData,
        )
      ],
    );
  }
}
