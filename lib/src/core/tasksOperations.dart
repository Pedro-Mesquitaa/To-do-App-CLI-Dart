import 'package:to_do_App/src/core/archives.dart';

addTask() {}

listTask() async {
  Map<String, dynamic> tasks = await reciveArchive("../config/task.json");


  if (tasks.isEmpty) {
    print("no tasks found");
  } else {
    tasks.forEach((key, value) => print("[$key]: $value"));
  }
}

checkTask(int index) {}

removeTask(int index) {}
