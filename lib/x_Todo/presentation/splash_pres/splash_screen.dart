import 'package:flutter/material.dart';
import 'package:x_todo/x_Todo/presentation/splash_pres/widgets/background.dart';
import 'package:x_todo/x_Todo/presentation/splash_pres/widgets/carosel.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackDrop(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CaroselCard(),
          )
        ],
      ),
    );
  }
}
