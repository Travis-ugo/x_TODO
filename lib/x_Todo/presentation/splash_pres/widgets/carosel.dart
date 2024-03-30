import 'package:flutter/material.dart';
import 'package:x_todo/main.dart';

class CaroselCard extends StatelessWidget {
  const CaroselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: publicPromaryColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "* * * *",
            style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18),
          ),
          const Text(
            "Start Your Day With Planning Some Tasks",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Start Your Day With Planning Some Tasks Start Your Day With Planning Some Some Tasks Start Your Day With Planning Some Tasks",
            style: TextStyle(
                color: Color.fromARGB(255, 174, 184, 189), fontSize: 12),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    key: const Key('get_started'),
                    style: ElevatedButton.styleFrom(
                      elevation: 1.0,
                      shadowColor: Colors.lightBlue,
                      backgroundColor: Color.fromARGB(255, 75, 141, 255),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      minimumSize: const Size(150, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
