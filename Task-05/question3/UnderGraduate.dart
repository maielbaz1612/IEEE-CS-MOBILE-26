import 'Student.dart';
import 'StudentEvent.dart';

class UnderGraduate extends Student implements StudentEvent {
  UnderGraduate(super.Regist, super.name, super.marks);

  @override
  double calcGPA() {
    double totalPoints = 0;
    for (double mark in marks) {
      if (mark >= 95)
        totalPoints += 12;
      else if (mark >= 90)
        totalPoints += 11.5;
      else if (mark >= 85)
        totalPoints += 11;
      else if (mark >= 80)
        totalPoints += 10;
      else if (mark >= 75)
        totalPoints += 9;
      else if (mark >= 70)
        totalPoints += 8;
      else if (mark >= 65)
        totalPoints += 7;
      else if (mark >= 60)
        totalPoints += 6;
      else if (mark >= 56)
        totalPoints += 5;
      else if (mark >= 53)
        totalPoints += 4;
      else if (mark >= 50)
        totalPoints += 3;
      else
        totalPoints += 0;
    }
    return totalPoints / (marks.length * 3);
  }

  @override
  printInfo() {
    print("Undergraduate Student: $fullName");
    print("ID: $RegistrationNum");
    print("GPA: ${calcGPA()}");
  }
}
