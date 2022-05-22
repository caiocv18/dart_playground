void main(List<String> args) {
  print("jesus alive!");
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
