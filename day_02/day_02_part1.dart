import 'dart:io';

void main() async {
  var file = File('day_02_input.txt');
  String id = await file.readAsString();
  String id1 = id.trim();
  List id2 = id1.split(',');
  List z;
  int x;
  int y;
  String Digit;
  int count = 0;
  int firstValue;
  int secondValue;
  double totalInvalid = 0;
  for (int i = 0; i < id2.length; i++) {
    z = id2[i].split('-');
    x = int.parse(z[0]);
    y = int.parse(z[1]);
    for (int j = x; j <= y; j++) {
      Digit = j.toString();
      if (Digit.length % 2 == 0) {
        firstValue = int.parse(
          Digit.substring(0, (Digit.length * 0.5).toInt()),
        );
        secondValue = int.parse(
          Digit.substring((Digit.length * 0.5).toInt(), Digit.length),
        );
        if (firstValue == secondValue) {
          count += 1;
          totalInvalid += int.parse(Digit);
        }
      }
    }
  }
  print(totalInvalid.toInt());
}
