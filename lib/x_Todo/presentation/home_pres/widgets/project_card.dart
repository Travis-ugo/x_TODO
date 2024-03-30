import 'dart:math';

import 'package:flutter/material.dart';
import 'package:x_todo/main.dart';

class ProjectCardSlide extends StatelessWidget {
  const ProjectCardSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 170,
        margin: const EdgeInsets.symmetric(vertical: 35),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Transform.rotate(
              angle: -pi / 12.0,
              child: Container(
                height: 170,
                width: 260,
                margin: const EdgeInsets.only(left: 20),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: const Color(0xFFAAA9B4),
                ),
              ),
            ); //const ProjectCard();
          },
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 260,
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: publicPromaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ongoing",
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ],
          ),
          const Text(
            'Design Planning',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
          const Text(
            "* * * * (24/25)",
            style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
          ),
          Row(
            children: [
              for (var i = 0; i < 2; i++)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF3A3A54),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.white,
                      ),
                      SizedBox(width: 13),
                      Text(
                        "Design",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
