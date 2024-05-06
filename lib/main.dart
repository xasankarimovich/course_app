import 'package:course_app/screen/homework_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeworkScreen(),
    );
  }
}
