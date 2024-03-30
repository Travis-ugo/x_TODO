import 'package:flutter/material.dart';

class DateSlide extends StatelessWidget {
  const DateSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 85,
        margin: const EdgeInsets.symmetric(vertical: 35),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const DateHolderWidget();
          },
        ),
      ),
    );
  }
}

class DateHolderWidget extends StatelessWidget {
  const DateHolderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 60,
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF151454),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mon",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 141, 141, 141),
            thickness: 2,
          ),
          Text(
            "21",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
