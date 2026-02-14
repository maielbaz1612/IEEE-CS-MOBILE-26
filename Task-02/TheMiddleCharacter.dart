import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    int num = input.length;
    if (num % 2 == 0) {
      print(input[(num / 2).toInt() - 1] + "" + input[(num / 2).toInt()]);
    } else {
      print(input[(num / 2).toInt()]);
    }
  }
}
