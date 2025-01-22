import 'archives.dart';
import '../utils/json.dart';
import 'dart:io';

Future<void> addTask() async {
  print("Describe your task:");
  String taskInput = stdin.readLineSync() ?? "none";

  await addInArchive("lib/src/core/config/task.json", taskInput); 

  print("\nTask added successfully!");
}

Future<void> listTask() async {
  Map<String, dynamic> tasks = await jsonToMap("lib/src/core/config/task.json");


  if (tasks.isEmpty) {
    print("no tasks found");
  } else {
    tasks.forEach((key, value) => print("[$key]: $value"));
  }
}

checkTask(int index) {
  //IMPLEMENTAR DEPOIS!!
}

removeTask(int index) {
  //IMPLEMENTAR DEPOIS!!
}
