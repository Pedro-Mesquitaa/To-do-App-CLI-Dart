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


Future<void> checkTask(int index) async {
  Map<String, dynamic> tasks = await jsonToMap("lib/src/core/config/task.json");

 
  Iterable<int> intKeys = tasks.keys
      .where((key) => int.tryParse(key) != null) 
      .map((key) => int.parse(key));

  for (int i in intKeys) {
    if (i == index) {
      await removeTask(i);
      return; 
    }
  }


  print("\nEnter a valid index");
  exit(1);
}

Future<void> removeTask(int index) async {
  Map<String, dynamic> tasks = await jsonToMap("lib/src/core/config/task.json");

  Iterable<int> intKeys = tasks.keys
      .where((key) => int.tryParse(key) != null) 
      .map((key) => int.parse(key)); 

  for (int i in intKeys) {
    if (i == index) {
      tasks.remove(i.toString()); 
      await overwriteInJson(tasks, "lib/src/core/config/task.json");

      print("Task removed successfully");
      return; 
    }
  }


  print("\nEnter a valid index");
  exit(1);
}