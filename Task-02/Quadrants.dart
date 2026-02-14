import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    List<int> nums = input.split(' ').map(int.parse).toList();
    int x = nums[0];
    int y = nums[1];
    if (x > 0 && y > 0) {
      print(1);
    } else if (x < 0 && y > 0) {
      print(2);
    } else if (x < 0 && y < 0) {
      print(3);
    } else if (x > 0 && y < 0) {
      print(4);
    }
  }
}
