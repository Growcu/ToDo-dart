import 'dart:io';
import 'dart:convert';

export 'addItem.dart';

addItem(list, args, tasks) {
  List NewListOfTask = [
    ...list,
    {
      'title': args[1],
      'isImportant': args.length >= 3 && args[2] == '-i',
      'craeted': 'time',
      'timeToDo': 'time',
    }
  ];
  tasks['tasks'] = NewListOfTask;
  String newTasks = jsonEncode(tasks);
  new File('../Database/tasks.json').writeAsString(newTasks);
}
