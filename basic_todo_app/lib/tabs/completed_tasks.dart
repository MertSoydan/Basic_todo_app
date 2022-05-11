import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:basic_todo_app/providers/todos_model.dart';
import 'package:basic_todo_app/widgets/task_list.dart';

class CompletedTasksTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosModel>(
        builder: (context, todos, child) => TaskList(
          tasks: todos.completedTasks,
        ),
      ),
    );
  }
}
