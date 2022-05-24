import 'dart:io';

class Class2 {
  void learningMapToList() {
    var myMap = {
      'myName': "Caio Vinicius",
      'myAge': 22,
      'myParents': [
        "Marta Pereira Cesar da Silva",
        "Luiz Antonio Bezerra da Silva"
      ],
    };
    print(myMap);
    var myArray = [];
    myMap.forEach((key, value) {
      myArray.add(value);
    });
    var myParents = [];
    myParents = myArray[2];
    for (var element in myParents) {
      print(element);
    }
  }

  void intAndDouble() {
//int idade = 22;
    int age = 0x000016;
    double height = 1.70; //using hex
    double largeHeight = 170e6;
    print(age);
    print(height);
    print(largeHeight);
  }

  void usingBoolean() {
    bool male = true;
    int age = 22;
    bool canDrive = age > 16;
    print("Is he male?");
    if (male) {
      print("Yes");
    } else {
      print("no");
    }
    print("He can't drive, right?");
    if (!canDrive) {
      print("Yes");
    }
    {
      print("No");
    }
  }

  void usingString() {
    String name = "Caio Vinicius";
    String nickname = "cacavi";
    print('My name is $name,\n'
        'but my wife call me as $nickname');
  }

  void exerciseClass2() {
    bool isEngaged = false;

    print("What's your name?\n");
    String? name = stdin.readLineSync();

    print("What's your age?\n");
    String? responseAge = stdin.readLineSync();
    int age = int.parse(responseAge!);

    print("What's your height?\n");
    String? responseHeight = stdin.readLineSync();
    double height = double.parse(responseHeight!);

    print("Are you engaged?(Y/S)\n");
    String? response = stdin.readLineSync();
    if (response?.toUpperCase() == "Y") {
      isEngaged = true;
    }

    print("What's your bride's name?(Y/S)\n");
    String? bridesName = stdin.readLineSync();

    int bornDate = 2022 - age;
    print("Your name is $name.\n"
        "You is $height m\n"
        "Your age is $age, so... you has born in $bornDate\n"
        "You are $isEngaged engaged and your bride's name is $bridesName\n");
  }
}
