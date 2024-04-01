import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:x_todo/x_Todo/presentation/home_pres/widgets/member_profile.dart';
import 'package:x_todo/x_Todo/presentation/home_pres/widgets/task_tile.dart';
import 'package:x_todo/x_Todo/presentation/widgets/see_all.dart';

class InnerGroupScreen extends StatelessWidget {
  const InnerGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          InnerGroupAppBar(),
          InnerGroupForeImage(),
          InnerGroupTeamList(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SeeAllTaskWidget(title: 'Tasks'),
            ),
          ),
            ListTaskTile(),
        ],
      ),
    );
  }
}

class InnerGroupAppBar extends StatelessWidget {
  const InnerGroupAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(CupertinoIcons.arrow_left),
          Text(
            "Design Planning",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          Icon(CupertinoIcons.square_grid_2x2),
        ],
      ),
    );
  }
}

class InnerGroupForeImage extends StatelessWidget {
  const InnerGroupForeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 210,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}

class InnerGroupTeamList extends StatelessWidget {
  const InnerGroupTeamList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "On Team:",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: ((context, index) => const MemberProfileWidget()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
