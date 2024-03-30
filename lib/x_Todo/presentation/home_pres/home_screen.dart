import 'package:flutter/material.dart';
import 'package:x_todo/x_Todo/presentation/home_pres/widgets/app_bar.dart';
import 'package:x_todo/x_Todo/presentation/home_pres/widgets/date_holder.dart';
import 'package:x_todo/x_Todo/presentation/home_pres/widgets/project_card.dart';
import 'package:x_todo/x_Todo/presentation/home_pres/widgets/task_tile.dart';
import 'package:x_todo/x_Todo/presentation/widgets/see_all.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          DateSlide(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SeeAllTaskWidget(title: 'Project'),
            ),
          ),
          ProjectCardSlide(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SeeAllTaskWidget(title: 'Ongoing Tasks'),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          ListTaskTile(),
        ],
      ),
    );
  }
}
