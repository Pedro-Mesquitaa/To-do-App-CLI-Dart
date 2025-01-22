import '../utils/json.dart';

//save(){} IMPLEMENTAR DEPOIS!

void addInArchive(String archive, String task) async {

  var counter = await _addCounter();

  Map<String, dynamic> jsonFile = await jsonToMap(archive);

  jsonFile.putIfAbsent(counter.toString(), () => task);

  writeInJson(jsonFile, "../config/task.json");
}

Future<int> _addCounter() async{
  var jsonFile = await jsonToMap("../config/counter.json");

  List<String> counterString = List.from(jsonFile.values.toList());

  int counter = int.parse(counterString[0]) + 1; 

  counterString[0] = counter.toString();

  jsonFile.update("k", (value) => counterString[0]);

  writeInJson(jsonFile, "../config/counter.json");

  return counter;
}