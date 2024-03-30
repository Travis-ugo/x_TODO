import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      title: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 13, 7, 70),
            ),
            child: const Center(
                child: Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            )),
          ),
          const SizedBox(width: 10),
          const Text(
            "Hello, Reyznata👋",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          const Badge(
            backgroundColor: Colors.blue,
            child: Icon(CupertinoIcons.bell),
          ),
        ],
      ),
    );
  }
}
