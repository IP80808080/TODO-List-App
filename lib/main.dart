import 'package:flutter/material.dart';
import 'package:todo/todotile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Tutorial', false],
    ['Make porn', false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: SafeArea(
        child: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return TODOTile(
              taskName: toDoList[index][0],
              taskComplete: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        backgroundColor: Colors.purpleAccent[100],
        foregroundColor: Colors.white,
        splashColor: Colors.deepPurple[100],
        elevation: 5,
        highlightElevation: 10,
        child: Icon(
          Icons.add_rounded,
          color: Colors.black,
          size: 35,
          shadows: [
            BoxShadow(
              spreadRadius: 1,
              color: Colors.white,
              blurRadius: 2,
              offset: Offset(1, 1),
            )
          ],
        ),
      ),
    );
  }
}
