import 'package:flutter/material.dart';
import 'package:x_todo/x_Todo/presentation/home_pres/home_screen.dart';
import 'package:x_todo/x_Todo/presentation/widgets/see_all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}

var publicPromaryColor = const Color(0xFF151454);

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DateHolderWidget(),
            // ProjectCard(),
            DeskWidget(),
            SeeAllTaskWidget(title: 'Task'),
            // TaskTile(),
            //  MemberProfileWidget(),
            // CaroselCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MemberProfileWidget extends StatelessWidget {
  const MemberProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 50,
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
        const CircleAvatar(
          backgroundColor: Colors.green,
          radius: 5,
        )
      ],
    );
  }
}

class DeskWidget extends StatelessWidget {
  const DeskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color.fromARGB(255, 13, 7, 70),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 230, 230, 230),
              ),
              child: Row(
                children: [
                  for (var i = 0; i < 4; i++)
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 124, 188, 255),
                      ),
                      child: Container(),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
