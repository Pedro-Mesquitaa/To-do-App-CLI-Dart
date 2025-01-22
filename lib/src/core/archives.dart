import '../utils/json.dart';

save() async {
  var data = await jsonToMap("../lib/src/core/config/task.json");

   await createJsonFile("../lib/src/core/backup/backup.json", data);
} 

Future<void> addInArchive(String archive, String task) async {

  var counter = await _addCounter();

  Map<String, dynamic> jsonFile = await jsonToMap(archive);

  jsonFile.putIfAbsent(counter.toString(), () => task);

  writeInJson(jsonFile, "../lib/src/core/config/task.json");
}

Future<int> _addCounter() async{
  var jsonFile = await jsonToMap("../lib/src/core/config/counter.json");

  List<String> counterString = List.from(jsonFile.values.toList());

  int counter = int.parse(counterString[0]) + 1; 

  counterString[0] = counter.toString();

  jsonFile.update("k", (value) => counterString[0]);

  writeInJson(jsonFile, "../lib/src/core/config/counter.json");

  return counter;
}

Future<void> createJsonFile(String filePath, Map<String, dynamic> data) async {
  try {
    
    await overwriteInJson(data, filePath);

    print('Archive json saved!');
  } catch (e) {
    print('Error to create JSON file: $e');
  }
}