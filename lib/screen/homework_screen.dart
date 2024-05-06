import 'package:course_app/screen/details_screen.dart';
import 'package:course_app/screen/utils/app_section.dart';
import 'package:course_app/widgets/homework_item.dart';
import 'package:flutter/material.dart';

class HomeworkScreen extends StatelessWidget {
  HomeworkScreen({super.key});

  List<Map<String, dynamic>> dayNames = [
    {
      "day": 'Mon',
      'date': "22",
      "isSelected": false,
    },
    {
      "day": 'Tue',
      'date': "23",
      "isSelected": false,
    },
    {
      "day": 'Wed',
      'date': "24",
      "isSelected": false,
    },
    {
      "day": 'Thu',
      'date': "25",
      "isSelected": true,
    },
    {
      "day": 'Fri',
      'date': "26",
      "isSelected": false,
    },
    {
      "day": 'Sat',
      'date': "27",
      "isSelected": false,
    },
    {
      "day": 'Sun',
      'date': "28",
      "isSelected": false,
    },
  ];

  List<Map<String, dynamic>> hometasks = [
    {
      'generalTitle': "English homework",
      "title": "Basic english writing",
      "chapter": "chapter-12",
      "description":
          "Excepteur laborum quis incididunt eiusmod magna qui amet irure magna.",
      "time": "40 min",
      "icon": Icons.edit,
      "isSelected": false,
    },
    {
      'generalTitle': "German homework",
      "title": "Basic german listening",
      "chapter": "chapter-9",
      "description":
          "Excepteur laborum quis incididunt eiusmod magna qui amet irure magna.",
      "time": "30 min",
      "icon": Icons.headphones,
      "isSelected": true,
    },
    {
      'generalTitle': "Spanish homework",
      "title": "Basic Englidsh speaking",
      "chapter": "chapter-11",
      "description":
          "Excepteur laborum quis incididunt eiusmod magna qui amet irure magna.",
      "time": "60 min",
      "icon": Icons.volume_down_sharp,
      "isSelected": false,
    },
  ];

  Color primaryColor = const Color.fromARGB(255, 48, 4, 153);

  Widget getDays(String dayName, String date, bool isSelected) {
    return Column(
      children: [
        Text(
          dayName,
          style: TextStyle(color: isSelected ? Colors.purple : Colors.black),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              shape: BoxShape.circle,
              color: isSelected ? Colors.blue : Colors.white),
          child: Text(
            date,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Homeworks",
        widget: CourseDetailesPage(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var day in dayNames)
                    getDays(
                      day['day'],
                      day['date'],
                      day['isSelected'],
                    ),
                ],
              ),
              const SizedBox(height: 40),
              for (var homework in hometasks)
                HomeWorkItem(
                  title: homework['title'],
                  generalTitle: homework['generalTitle'],
                  description: homework['description'],
                  chapter: homework['chapter'],
                  duration: homework['time'],
                  icon: homework['icon'],
                  primaryColor: primaryColor,
                  isSelected: homework['isSelected'],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
