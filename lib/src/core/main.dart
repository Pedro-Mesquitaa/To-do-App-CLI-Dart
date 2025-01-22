import 'dart:io';
import 'tasksOperations.dart';

void main(List<String> args) async {
  
  //verifica se há argumentos, se não finaliza a aplicação e recomenda o uso de --help
  if (args.isEmpty) {
    print("No arguments passed. Use the --help flag.");
    exit(1);
  }

//switch responsável por controlar as possíveis entradas do user
  switch (args[0].toLowerCase()) {
    case "add":
    //todos comandos são encapsulados em blocos try-catch para evitar interrupções 
      try { 
        await addTask();
      } catch (e) {
        print("An error occurred while adding a task: $e");
        exit(1);
      }
      break;

    case "list-tasks":
      try {
        await listTask();
      } catch (e) {
        print("An error occurred while listing tasks: $e");
        exit(1);
      }
      break;

    case "check-task":
    //verificação se o indice é hábito a passar para int
      if (args.length < 2 || int.tryParse(args[1]) == null) {
        print("Error: 'check-task' requires a valid task index.");
        exit(1);
      }
      try {
        checkTask(int.parse(args[1]));
      } catch (e) {
        print("An error occurred while checking the task: $e");
        exit(1);
      }
      break;

    case "remove":
    //verificação se o indice é hábito a passar para int
      if (args.length < 2 || int.tryParse(args[1]) == null) {
        print("Error: 'remove' requires a valid task index.");
        exit(1);
      }
      try {
        removeTask(int.parse(args[1]));
      } catch (e) {
        print("An error occurred while removing the task: $e");
        exit(1);
      }
      break;

    case "save":
      try {
        //save(); //IMPLEMENTAR DEPOIS!!!!
      } catch (e) {
        print("An error occurred while saving tasks: $e");
        exit(1);
      }
      break;

    case "--help":
      printHelp();
      break;

    default:
      print("Unknown command: ${args[0]}. Use the --help flag for assistance.");
      exit(1);
  }
}

//função da mensagem help
void printHelp() {
  print("Available commands:\n");
  print("-> add: Add new tasks");
  print("-> list-tasks: List all your tasks");
  print("-> check-task <index>: Mark a task by its index as completed");
  print("-> remove <index>: Remove a task by its index");
  print("-> save: Save all your tasks in a JSON file\n");
  print("Examples:");
  print("  dart main.dart add");
  print("  dart main.dart list-tasks");
  print("  dart main.dart check-task 2");
  print("  dart main.dart remove 1");
  print("  dart main.dart save\n");
  print("For more information, see the README.md in the main folder or in the GitHub repository.");
}