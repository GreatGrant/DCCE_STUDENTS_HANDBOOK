import 'package:flutter/cupertino.dart';

class CourseContent extends StatelessWidget {
  final String title;
  final String content;

  const CourseContent(this.title, this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(content),
        ],
      ),
    );
  }
}