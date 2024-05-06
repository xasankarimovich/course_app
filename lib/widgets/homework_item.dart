import 'package:course_app/screen/details_screen.dart';
import 'package:course_app/screen/utils/screen_extention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWorkItem extends StatelessWidget {
  Color primaryColor;
  String title;
  String generalTitle;
  String description;
  String chapter;
  String duration;
  IconData icon;
  bool isSelected;

  HomeWorkItem({
    required this.title,
    required this.generalTitle,
    required this.description,
    required this.chapter,
    required this.duration,
    required this.icon,
    required this.primaryColor,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          generalTitle.capitalize(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: isSelected ? primaryColor : null,
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.white : primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: isSelected ? primaryColor : Colors.white,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.capitalize(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: isSelected ? Colors.white : null,
                        ),
                      ),
                      Text(
                        chapter.toUpperCase(),
                        style: TextStyle(
                          color: isSelected
                              ? Color.fromARGB(255, 103, 174, 233)
                              : Colors.orange.shade900,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.white : primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetailesPage(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Submit",
                            style: TextStyle(
                              color: isSelected ? primaryColor : Colors.white,
                            ),
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            size: 18,
                            color: isSelected ? primaryColor : Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Icon(
                    Icons.timer_outlined,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    duration,
                    style: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
