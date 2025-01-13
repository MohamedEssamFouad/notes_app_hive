import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app_hive/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Set this to the design size of your app
      minTextAdapt: true, // Ensures text scales properly
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: Brightness.dark
          ),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const NotesView(),
    );
  }
}
