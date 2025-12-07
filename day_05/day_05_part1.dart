import 'dart:io';

void main() async {
  var file = File('day_05_input.txt');
  List<String> fileContent = await file.readAsLines();
  List<String> freshId = [];
  List<String> freshIdX = [];
  List<String> freshIdY = [];
  List<String> availableId = [];
  late int availableIdInt;
  late int freshIdXInt;
  late int freshIdYInt;
  int total = 0;
  for (int i = 0; i < fileContent.length; i++) {
    if (fileContent[i] == '') {
      freshId = fileContent.sublist(0, i);
      availableId = fileContent.sublist(i + 1);
      break;
    }
  }
  for (int i = 0; i < freshId.length; i++) {
    for (int j = 0; j < freshId[i].length; j++) {
      if (fileContent[i].substring(j, j + 1) == '-') {
        freshIdX.add(freshId[i].substring(0, j));
        freshIdY.add(freshId[i].substring(j + 1));
        break;
      }
    }
  }

  for (int i = 0; i < availableId.length; i++) {
    availableIdInt = int.parse(availableId[i]);
    for (int j = 0; j < freshIdX.length; j++) {
      freshIdXInt = int.parse(freshIdX[j]);
      freshIdYInt = int.parse(freshIdY[j]);
      if (availableIdInt > freshIdXInt && availableIdInt < freshIdYInt) {
        total += 1;
        break;
      }
    }
  }
  print(total);
}
