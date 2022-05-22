void main(List<String> args) {}

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
