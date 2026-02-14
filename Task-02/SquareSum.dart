import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    List<int> nums = input.split(' ').map(int.parse).toList();
    int sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i] * nums[i];
    }

    print(sum);
  }
}
