import 'dart:io';
import 'package:string_validator/string_validator.dart';

class Class4 {
  int age = 0;
  bool isAdult = false;

  void checkAdult() {
    print("How old are you?");
    age = int.parse(stdin.readLineSync());
    if (age > 18) {
      isAdult = true;
    } else {
      isAdult = false;
    }
    if (isAdult) {
      print("You're an adult :)");
    } else {
      print("You aren't an adult :(");
    }
  }

  void multiplicationTable(int number) {
    for (int i = 0; i < number; i++) {
      print("$i x $number = " + (i * number).toString());
    }
  }

  void inputPhoneNumber() {
    int phoneNumber = 0;
    String response = "";
    do {
      print("What's your phone number?");
      response = stdin.readLineSync();
    } while (isAlpha(response));
    phoneNumber = int.parse(response);
    print(phoneNumber);
  }

  void arrayMethods(List array) {
    print("==========FOREACH==========");
    array.forEach((element) => print(element));

    print("============MAP============");
    List mapArray = array.map((e) => "Map - $e").toList();
    print(mapArray);

    print("==========CONTAINS=========");
    print(array.contains("Iara"));

    print("============SORT===========");
    array.sort();
    print(array);

    print("===========REDUCE==========");
    List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    int sumOfPairs = numbers
        .map((e) => e % 2 == 0 ? e : 0)
        .reduce((value, element) => value + element);
    print(sumOfPairs);
    List<Map> myMap = [
      {"Name": "Caio Vinicius", "Age": 22, "Job": "Systems Analyst"},
      {"Name": "Iara Alves", "Age": 21, "Job": "Student"}
    ];
    print("===========EVERY===========");
    var isAdult = myMap.every((element) => element["Age"] > 18);
    print(isAdult);
    print("===========WHERE===========");
    var onlyIara = myMap.where((element) => element["Name"] == "Iara Alves");
    var onlyAdults = myMap.where((element) => element["Age"] > 18);
    var onlyOlders = myMap.where((element) => element["Age"] > 60);
    print(onlyIara);
    print(onlyAdults);
    print(onlyOlders);
    print("============TAKE===========");
    print(numbers.take(3));
    print("============SKIP===========");
    print(numbers.skip(5));
    print("=========LIST.FROM=========");
    List newNumbers = List.from(numbers);
    print(newNumbers);
    print("===========EXPAND==========");
    List list = [1, 2, 3];
    var expandedList =
        list.expand((element) => [element, element * 2, element * 3]);
    print(expandedList);
  }
}
