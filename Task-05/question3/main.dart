import 'FullName.dart';
import 'PostGraduate.dart';
import 'UnderGraduate.dart';

void main() {
  FullName student1 = FullName("Ahmed", "Ali", "Mansour");
  FullName student2 = FullName("Sara", "Omar", "Mahmoud");

  UnderGraduate student = UnderGraduate(6789875, student1, [
    95,
    78,
    70,
    96,
    88,
    76,
    80,
  ]);
  PostGraduate senior = PostGraduate(123769, student2, [
    99,
    89,
    91,
    90,
    95,
    86,
  ]);

  student.printInfo();
  senior.printInfo();
}
