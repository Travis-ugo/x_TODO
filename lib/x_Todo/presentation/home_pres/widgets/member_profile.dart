import 'package:flutter/material.dart';

class MemberProfileWidget extends StatelessWidget {
  const MemberProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 13, 7, 70),
            ),
            // child: const Center(
            //     child: Icon(
            //   Icons.add,
            //   color: Colors.white,
            //   size: 35,
            // )),
          ),
          const SizedBox(height:10),
          const CircleAvatar(
            backgroundColor: Colors.green,
            radius: 3,
          )
        ],
      ),
    );
  }
}
