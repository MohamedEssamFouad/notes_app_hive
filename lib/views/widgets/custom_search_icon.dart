import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.iconData});
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 45.w,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16.r)
        
      ),
      child: Center(
        child: Icon(iconData,),
      ),
    );
  }
}
