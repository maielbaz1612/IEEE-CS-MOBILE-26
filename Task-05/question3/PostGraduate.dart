import 'Student.dart';
import 'StudentEvent.dart';

class PostGraduate extends Student implements StudentEvent {
  PostGraduate(super.Regist, super.name, super.marks);

  @override
  double calcGPA() {
    double totalPoints = 0;
    for (double mark in marks) {
      if (mark >= 90)
        totalPoints += 12;
      else if (mark >= 85)
        totalPoints += (32.0 / 3.0);
      else if (mark >= 80)
        totalPoints += (31.0 / 3.0);
      else if (mark >= 75)
        totalPoints += 10;
      else if (mark >= 70)
        totalPoints += (22.0 / 3.0);
      else if (mark >= 65)
        totalPoints += 7;
      else if (mark >= 60)
        totalPoints += 6;
      else
        totalPoints += 0;
    }
    return totalPoints / (marks.length * 3);
  }

  @override
  printInfo() {
    print("PostGraduate Student: $fullName");
    print("ID: $RegistrationNum");
    print("GPA: ${calcGPA()}");
  }
}
