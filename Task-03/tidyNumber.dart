import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    int num = int.parse(input);
    print(check(num));
  }
}

bool check(int n) {
  String st = n.toString();
  bool valid = true;
  int first, last;
  for (int i = 0; i < st.length - 1; i++) {
    first = int.parse(st[i]);
    last = int.parse(st[i + 1]);
    if (first > last) {
      valid = false;
    }
  }
  return valid;
}
