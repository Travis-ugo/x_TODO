import 'package:flutter/material.dart';

class SeeAllTaskWidget extends StatelessWidget {
  const SeeAllTaskWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title :",
          style: const TextStyle(
            color: Color(0xFF000000),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color.fromARGB(255, 124, 188, 255),
          ),
          child: const Center(
            child: Text(
              "25",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        const Spacer(),
        const Text(
          "See all",
          style: TextStyle(
            color: Color.fromARGB(255, 202, 135, 135),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Icon(Icons.arrow_right)
      ],
    );
  }
}
