import 'dart:io';

void main() {
  int Linear(int n) {
    List<int> arr = [];
    arr.add(1);
    int pointY = 0;
    int pointZ = 0;

    while (arr.length <= n) {
      int y = 2 * arr[pointY] + 1;
      int z = 3 * arr[pointZ] + 1;

      if (y < z) {
        arr.add(y);
        pointY++;
      } else if (y > z) {
        arr.add(z);
        pointZ++;
      } else {
        arr.add(y);
        pointY++;
        pointZ++;
      }
    }

    return arr[n];
  }

  String? input = stdin.readLineSync();
  if (input != null) {
    int num = int.parse(input);
    int result = Linear(num);
    print(result);
  }
}
