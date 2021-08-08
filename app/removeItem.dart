import 'dart:io';
import 'dart:convert';

export 'removeItem.dart';

removeItem(list, args, tasks) {
  List NewListOfTask = [];

  if (args[1] != '-a') {
    list.forEach((element) {
      if (element['title'] == args[1]) {
        return;
      }
      NewListOfTask = [...NewListOfTask, element];
    });
  }

  tasks['tasks'] = NewListOfTask;
  String newTasks = jsonEncode(tasks);
  new File('../Database/tasks.json').writeAsString(newTasks);
}
