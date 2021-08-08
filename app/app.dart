import 'dart:io';
import 'dart:convert';

import 'listItem.dart';
import 'addItem.dart';
import 'removeItem.dart';

void main(List<String> args) {
  if (args.length == 0)
    return print('You have to pass any parametrs. Use --help to see options');

  if (args.length > 3) return print('To much parametrs!');

  String content = new File('../Database/tasks.json').readAsStringSync();
  var tasks = jsonDecode(content);
  List ListOfTasks = tasks['tasks'];

  switch (args[0]) {
    case '--help':
      print('Available parametrs: --list, --add, --remove');
      break;
    case '--list':
      listItem(ListOfTasks);
      break;
    case '--add':
      addItem(ListOfTasks, args, tasks);
      break;
    case '--remove':
      removeItem(ListOfTasks, args, tasks);
      break;
    default:
      print('Unknown parametrs');
  }
}
