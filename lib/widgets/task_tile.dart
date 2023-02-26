import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('this is a task'),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: (x) {},
        value: false,
      ),
    );
  }
}
