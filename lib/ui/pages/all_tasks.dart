import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/models/task_model.dart';
import 'package:provider/providers/todo_provider.dart';
import 'package:provider/ui/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: Provider.of<TodoProvider>(context).allTasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(
            Provider.of<TodoProvider>(context).allTasks[index],
          );
        });
  }
}
