import 'package:flutter/material.dart';

class CourseInfo extends StatelessWidget {
  final String count;
  final String condition;
  const CourseInfo({super.key, required this.count, required this.condition});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(5.0, 6.0),
            blurRadius: 12.0,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: TextStyle(
              color: Colors.orange.shade900,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            condition,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
