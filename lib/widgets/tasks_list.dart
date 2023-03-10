import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              onchange: (checkboxState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
