import 'dart:io';
import 'dart:math';

void main() async {
  var file = File('day_03_input.txt');
  List<String> filecontent = await file.readAsLines();
  int x1 = 0;
  int x2 = 0;
  int x3 = 0;
  int x4 = 0;
  int x5 = 0;
  int x6 = 0;
  int x7 = 0;
  int x8 = 0;
  int x9 = 0;
  int x10 = 0;
  int x11 = 0;
  int x12 = 0;
  int totalJoltage = 0;
  int temp;
  var joltage;
  int max = 0;
  String digit = '';
  int length;
  int newIndex = 0;
  for (int i = 0; i < filecontent.length; i++) {
    length = filecontent[i].length;
    for (int j = 0; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 12 <= length) {
        if (x1 < int.parse(digit)) {
          x1 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 11 <= length) {
        if (x2 < int.parse(digit)) {
          x2 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 10 <= length) {
        if (x3 < int.parse(digit)) {
          x3 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 9 <= length) {
        if (x4 < int.parse(digit)) {
          x4 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 8 <= length) {
        if (x5 < int.parse(digit)) {
          x5 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 7 <= length) {
        if (x6 < int.parse(digit)) {
          x6 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 6 <= length) {
        if (x7 < int.parse(digit)) {
          x7 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 5 <= length) {
        if (x8 < int.parse(digit)) {
          x8 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 4 <= length) {
        if (x9 < int.parse(digit)) {
          x9 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 3 <= length) {
        if (x10 < int.parse(digit)) {
          x10 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 2 <= length) {
        if (x11 < int.parse(digit)) {
          x11 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    for (int j = newIndex + 1; j < filecontent[i].length; j++) {
      digit = filecontent[i].substring(j, j + 1);
      if (j + 1 <= length) {
        if (x12 < int.parse(digit)) {
          x12 = int.parse(digit);
          newIndex = j;
        }
      } else {
        break;
      }
    }

    joltage =
        x1 * pow(10, 11) +
        x2 * pow(10, 10) +
        x3 * pow(10, 9) +
        x4 * pow(10, 8) +
        x5 * pow(10, 7) +
        x6 * pow(10, 6) +
        x7 * pow(10, 5) +
        x8 * pow(10, 4) +
        x9 * pow(10, 3) +
        x10 * pow(10, 2) +
        x11 * pow(10, 1) +
        x12 * pow(10, 0);
    temp = joltage.toInt();
    totalJoltage += temp;
    x1 = 0;
    x2 = 0;
    x3 = 0;
    x4 = 0;
    x5 = 0;
    x6 = 0;
    x7 = 0;
    x8 = 0;
    x9 = 0;
    x10 = 0;
    x11 = 0;
    x12 = 0;
  }
  print(totalJoltage);
}
