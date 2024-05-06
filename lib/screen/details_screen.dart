import 'package:course_app/screen/homework_screen.dart';
import 'package:course_app/screen/utils/app_section.dart';
import 'package:course_app/screen/utils/course_info.dart';
import 'package:flutter/material.dart';

class CourseDetailesPage extends StatelessWidget {
  const CourseDetailesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Course Details",
        widget: HomeworkScreen(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                "assets/images/teacher.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "English for beginner",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CourseInfo(count: "24", condition: "Chapter"),
                CourseInfo(count: "12", condition: "Exam"),
                CourseInfo(count: "05", condition: "Rewards"),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              "About Course",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.menu_book_sharp),
          //   label: "Course",
          // ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
