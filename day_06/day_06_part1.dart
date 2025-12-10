import 'dart:async';
import 'dart:io';

void main() async {
  var file = File('day_06_input.txt');
  List<String> fileContent = await file.readAsLines();
  List<List> fileContent1 = [];
  int totalplus = 0;
  int totalmul = 1;
  late int total;
  int gTotal = 0;
  for (int i = 0; i < fileContent.length; i++) {
    List<String> temp = fileContent[i].trim().split(RegExp(r'\s+'));
    fileContent1.add(temp);
  }

  int indexOfOperator = fileContent1.length - 1;
  for (int i = 0; i < fileContent1[0].length; i++) {
    for (int j = 0; j < fileContent1.length - 1; j++) {
      if (fileContent1[indexOfOperator][i] == "*")
        totalmul *= int.parse(fileContent1[j][i]);
      else
        totalplus += int.parse(fileContent1[j][i]);
    }
    total = totalmul > totalplus ? totalmul : totalplus;
    gTotal += total;
    totalmul = 1;
    totalplus = 0;
  }
  print(gTotal);
}
