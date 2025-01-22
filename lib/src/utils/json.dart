import 'dart:convert';
import 'dart:io';


Future<Map<String, dynamic>> jsonToMap(String archive) async {
    final file = File(archive);
    final jsonString = await file.readAsString();

    return json.decode(jsonString);
}

void writeInJson(Map<String, dynamic> jsonMap, String path) async {
  String jsonFileString = jsonEncode(jsonMap);
  File fileJson = File(path);

  await fileJson.writeAsString(jsonFileString);
}