import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'hi'),
    Task(name: 'hii'),
    Task(name: 'hiIIIIi'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
