import 'package:to_do_App/src/core/archives.dart';
import 'dart:io';

addTask() {
  print("Describe your task:");
  String taskInput = stdin.readLineSync() ?? "none";

  addInArchive("../config/task.json", taskInput); 

  print("\nTask added successfully!");
}

void listTask() async {
  Map<String, dynamic> tasks = await jsonToMap("../config/task.json");


  if (tasks.isEmpty) {
    print("no tasks found");
  } else {
    tasks.forEach((key, value) => print("[$key]: $value"));
  }
}

checkTask(int index) {}

removeTask(int index) {}
