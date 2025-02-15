import 'package:flutter/material.dart';
import 'package:task2p2_w2/feautures/homePage/presentation/widgets/task_list_tile.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key, required this.list});
  final List<Map<String, dynamic>> list;
  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return TaskListTile(
            tasksList: widget.list,
            index: index,
          );
        },
        itemCount: widget.list.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          );
        },
      ),
    );
  }
}
