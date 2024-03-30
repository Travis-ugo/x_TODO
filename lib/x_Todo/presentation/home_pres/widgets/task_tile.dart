import 'package:flutter/material.dart';
import 'package:x_todo/main.dart';

class  ListTaskTile extends StatelessWidget {
  const  ListTaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return const TaskTile();
      },
    );
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color:  publicPromaryColor,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.circle_outlined,
            color: Colors.blueAccent,
            size: 15,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Continue to Make Design System",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Make a Cool Palette System",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.circle_outlined, color: Colors.blueAccent),
        ],
      ),
    );
  }
}
