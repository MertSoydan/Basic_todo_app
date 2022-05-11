import 'package:basic_todo_app/widgets/tasklistitem.dart';
import 'package:flutter/material.dart';
import 'package:basic_todo_app/models/task.dart';
import 'package:basic_todo_app/widgets/task_list.dart';

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  TaskList({required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getChildrenTasks(),
    );
  }

  List<Widget> getChildrenTasks() {
    return tasks.map((todo) => TaskListItem(task: todo)).toList();
  }
}
