import 'dart:convert';
import 'dart:io';

save(){}

Future<Map<String, dynamic>> jsonToMap(String archive) async {
    final file = File(archive);
    final jsonString = await file.readAsString();

    return json.decode(jsonString);
}

void addInArchive(String archive, String task) async {

  var counter = await _addCounter();

  Map<String, dynamic> jsonFile = await jsonToMap(archive);

  jsonFile.putIfAbsent(counter.toString(), () => task);

  String jsonFileString = jsonEncode(jsonFile);
  File fileJson = File(archive);

  await fileJson.writeAsString(jsonFileString);
}

Future<int> _addCounter() async{
  var jsonFile = await jsonToMap("../config/counter.json");

  List<String> counterString = List.from(jsonFile.values.toList());

  int counter = int.parse(counterString[0]) + 1; 

  counterString[0] = counter.toString();

  jsonFile.update("k", (value) => counterString[0]);

  String jsonFileString = jsonEncode(jsonFile);
  File fileJson = File("../config/counter.json");
  await fileJson.writeAsString(jsonFileString);

  return counter;
}