import 'package:flutter/material.dart';
import 'package:basic_todo_app/tabs/all_tasks.dart';
import 'package:basic_todo_app/tabs/completed_tasks.dart';
import 'package:basic_todo_app/tabs/uncompleted_tasks.dart';
import 'package:basic_todo_app/screens/add_tasks_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddTaskScreen()));
            },
          ),
        ],
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: "All"),
            Tab(text: "Incomplete"),
            Tab(text: "Complete"),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          AllTasksTab(),
          InCompletedTasksTab(),
          CompletedTasksTab(),
        ],
      ),
    );
  }
}
