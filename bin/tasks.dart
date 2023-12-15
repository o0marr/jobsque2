import 'dart:io';

main() {
  task6();
  // Hello
}

task1() {
  List<String> list = ["Dog", "Cat", "Rat", "Lion"];
  for (String element in list) {
    print(element);
  }
}

task2() {
  List<String> list = [
    "Avenegers",
    "Batman",
    "SuperMan",
    "AntMan",
    "IronMan",
    "AquaMan"
  ];
  List<String> results = [];

  for (String element in list) {
    if (element.toLowerCase().startsWith("a")) {
      results.add(element);
    }
  }
  print(results);
}

task3() {
  int numberOfTries = 5;
  for (int count = 1; count <= numberOfTries; count++) {
    print("Enter Your Email");
    String email = stdin.readLineSync()!;
    print("Enter Your password");
    String password = stdin.readLineSync()!;

    if (email.endsWith("@gmail.com") && password.length >= 7) {
      print("Success");
      break;
    } else {
      if (count == numberOfTries) {
        print("Failed Try Again Later");
        break;
      } else {
        print("Failed");
      }
    }
  }
}

printEvenNumbers() {
  print("Enter The Start");
  int start = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Enter The End");
  int end = int.tryParse(stdin.readLineSync()!) ?? 0;

  for (; start <= end; start++) {
    if (start.isEven) {
      print("$start is Even");
    }
  }
}

printOddNumbers() {
  print("Enter The Start");
  int start = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Enter The End");
  int end = int.tryParse(stdin.readLineSync()!) ?? 0;

  for (; start <= end; start++) {
    if (start.isOdd) {
      print("$start is Odd");
    }
  }
}

task5() {
  List<String> words = [
    "Bannan",
    "Batat",
    "Orange",
    "Apple",
    "Bear",
    "CocoNut"
  ];
  List<String> result = [];
  print("Enter the word");
  String input = stdin.readLineSync()!;

  for (int i = 0; i < words.length; i++) {
    if (words[i].startsWith(input)) {
      result.add(words[i]);
    }
  }

  print(result);
}

task6() {
  List<String> names = [];
  for (int i = 0; i < 10; i++) {
    print("Enter the name");
    String name = stdin.readLineSync()!;
    if(["end","close","exit"].contains(name))
      {
        break;
      }
    names.add(name);
  }

  print(names);
}
