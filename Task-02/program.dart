import 'dart:io';
import 'dart:math';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    int num = int.parse(input);
    Set<int> divisors = {};
    int limit = sqrt(num).toInt();

    for (int i = 2; i <= limit; i++) {
      if (num % i == 0) {
        divisors.add((num / i).toInt());
        divisors.add(i);
      }
    }

    List<int> arr = divisors.toList();
    arr.sort();
    print(arr);
  }
}
