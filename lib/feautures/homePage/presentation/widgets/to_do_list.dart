import 'package:flutter/material.dart';
import 'package:task2p2_w2/feautures/homePage/presentation/widgets/task_list_tile.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});
  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<Map<String, dynamic>> tasks = [
    {
      'title': 'Communication Systems Quiz',
      'time': '10:00 AM',
    },
    {
      'title': 'OS Report',
      'time': '11:00 AM',
    },
    {
      'title': 'Flutter Assignment',
      'time': '12:00 PM',
    },
    {
      'title': 'Meeting with Client',
      'time': '02:00 PM',
    },
    {
      'title': 'Dinner with Friends',
      'time': '08:00 PM',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return TaskListTile(
            task: tasks[index],
            onRemove: () {
              setState(() {
                tasks.removeAt(index);
              });
            },
          );
        },
        itemCount: tasks.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          );
        },
      ),
    );
  }
}
