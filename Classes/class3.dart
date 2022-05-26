import 'dart:io';

class Class3 {
  void listExercise() {
    List names = [];
    String contineButton = "";
    do {
      print("Add a name for your team:");
      names.add(stdin.readLineSync());
      print("Continue? (Y/N)");
      contineButton = stdin.readLineSync();
    } while (contineButton?.toUpperCase() == "Y");
    print(Process.runSync("cls", [], runInShell: true).stdout);
    for (var element in names) {
      print((names.indexOf(element) + 1).toString() + " - " + element);
    }
  }

// arrowListExercise() => () {
//       List<String> names = [];
//       String contineButton = "";
//       do {
//         print("Add a name for your team:");
//         names.add(stdin.readLineSync()!);
//         print("Continue? (Y/N)");
//         contineButton = stdin.readLineSync()!;
//       } while (contineButton.toUpperCase() == "Y");
//       print(Process.runSync("cls", [], runInShell: true).stdout);
//       for (var element in names) {
//         print(element);
//       }
//     };

  void dynamicList() {
    List<dynamic> person = ["Caio Vinicus", 22, 1.70, true];
    print(person.toString());
  }

  void finalAndConst() {
    const name = "Caio";
    final otherName = "Vinicius";
    const String adress = "Residencial Esplanada";
    final String adress2 = "Taguatinga Norte";
    var anything = "Qualquer coisa";
  }
}
