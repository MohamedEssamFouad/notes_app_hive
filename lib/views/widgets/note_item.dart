import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16.r),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(

            title: Text('Flutter tibs',style: TextStyle(
              fontSize: 24.sp,
              color: Colors.black,
            ),),
            subtitle: Padding(
              padding:  EdgeInsets.only(top: 5.h),
              child: Text('this is note note note note',style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 18.sp,
              ),),
            ),
            trailing:Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: IconButton(onPressed: (){},
                  icon: Icon(Icons.delete,color: Colors.black,
                  size: 30.r,
                  )),
            ) ,

          ),
          Padding(
            padding:  EdgeInsets.only(right:24.w ),
            child: Text(
              'May 21 , 2025',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.4)
              ),
            ),
          ),

        ],
      ),
    );
  }
}
