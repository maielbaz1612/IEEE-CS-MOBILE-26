import 'dart:ffi';
import 'dart:io';

void main() {
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();
  String? input3 = stdin.readLineSync();
  if (input1 != null && input2 != null && input3 != null) {
    int p0 = int.parse(input1);
    int w0 = int.parse(input2);
    int p1 = int.parse(input3);
    print(potatoes(p0, w0, p1));
  }
}

int potatoes(int p0, int w0, int p1) {
  double dryWhight = (100 - p0) * w0 / 100;

  double result = (dryWhight * 100 / (100 - p1));

  return result.toInt();
}
