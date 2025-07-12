import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isFree;

  const CourseCard({
    required this.title,
    required this.subtitle,
    required this.isFree,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2A3D4F),
      child: ListTile(
        leading: Icon(
          isFree ? Icons.play_arrow : Icons.school,
          color: const Color(0xFF00C4B4),
        ),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: const Color(0xFF8CC7B1)),
        ),
        trailing: ElevatedButton(
          child: Text(isFree ? 'Inscribirse Gratis' : 'Comprar'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00C4B4),
          ),
        ),
      ),
    );
  }
}
