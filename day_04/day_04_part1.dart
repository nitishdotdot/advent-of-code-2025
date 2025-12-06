import 'dart:io';

void main() async {
  var file = File('day_04_input.txt');
  List<String> roolGrid = await file.readAsLines();
  List<String> newroolGrid = [];
  int length = roolGrid[0].length;
  String toAdd = "1";
  int total = 0;
  int totalRool = 0;
  String formattedRool;
  bool found = false;
  int finalRool = 0;
  List<Map<String, int>> foundAt = [];

  List<int> listtotalRoll = [];
  for (int i = 0; i < length + 2; i++) toAdd = toAdd + "1";
  newroolGrid.add(toAdd.toString());
  for (int i = 0; i < roolGrid.length; i++) {
    formattedRool = "1" + roolGrid[i] + "1";
    newroolGrid.add(formattedRool);
  }
  newroolGrid.add(toAdd.toString());

  while (true) {
    for (int i = 1; i < newroolGrid.length - 1; i++) {
      for (int j = 1; j < newroolGrid[i].length - 1; j++) {
        if (newroolGrid[i].substring(j, j + 1) == "@") {
          found = true;
          if (newroolGrid[i].substring(j - 1, j) == "@") total += 1; //left
          if (newroolGrid[i].substring(j + 1, j + 2) == "@") total += 1; //right
          if (newroolGrid[i - 1].substring(j, j + 1) == "@") total += 1; //up
          if (newroolGrid[i + 1].substring(j, j + 1) == "@") total += 1; //down
          if (newroolGrid[i - 1].substring(j - 1, j) == "@") total += 1; //top-l
          if (newroolGrid[i - 1].substring(j + 1, j + 2) == "@")
            total += 1; //top-r
          if (newroolGrid[i + 1].substring(j - 1, j) == "@")
            total += 1; //btm--l
          if (newroolGrid[i + 1].substring(j + 1, j + 2) == "@")
            total += 1; //btm--r
        }
        if (found == true && total < 4) {
          totalRool += 1;
          foundAt.add({'i': i, 'j': j});
        }
        found = false;
        total = 0;
      } //j ends
      // List<String> newroolGridList = newroolGrid[i].split('');
      // for (int k in foundAt) {
      //   newroolGridList[k] = 'X';
      // }
      // newroolGrid[i] = newroolGridList.join();
      // foundAt.clear();
    } //i ends
    for (int k = 0; k < foundAt.length; k++) {
      int iIndex = foundAt[k]['i']!;
      int jIndex = foundAt[k]['j']!;
      List<String> newroolGridList = newroolGrid[iIndex].split('');
      newroolGridList[jIndex] = 'X';
      newroolGrid[iIndex] = newroolGridList.join();
    }
    foundAt.clear();
    if (totalRool == 0)
      break;
    else {
      listtotalRoll.add(totalRool);
      totalRool = 0;
    }
  } //while ends
  for (int count = 0; count < listtotalRoll.length; count++)
    finalRool += listtotalRoll[count];
  print(finalRool);
}
