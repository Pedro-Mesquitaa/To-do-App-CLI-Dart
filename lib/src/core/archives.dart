import 'dart:convert';
import 'dart:io';

save(){}

Future<Map<String, dynamic>> reciveArchive(String archive) async {
  
  if (archive.contains("task.json")) {
    final file = File("../config/task.json");
    final jsonString = await file.readAsString();

    return json.decode(jsonString);
  } else {
    return <String, dynamic>{};
  }
}