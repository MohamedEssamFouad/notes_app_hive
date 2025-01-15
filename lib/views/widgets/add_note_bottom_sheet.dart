import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children:[
            SizedBox(height: 32.h,),
            const  CustomTextField(
              hint: "Title",

            ),
            SizedBox(height: 16.h,)  ,
            const  CustomTextField(
              hint: "Title",
              maxLines: 5,

            ),
            SizedBox(height: 16.h,)  ,
            const   CustomButton(),
            SizedBox(height: 16.h,)  ,

          ],
        ),
      ),
    );
  }
}
