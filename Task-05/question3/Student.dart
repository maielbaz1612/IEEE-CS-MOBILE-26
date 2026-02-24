import 'FullName.dart';

class Student {
  int? registNumber;
  FullName? Name;
  List<double> marks = [];

  Student(int Regist, FullName name, List<double> marks) {
    this.registNumber = Regist;
    this.Name = name;
    this.marks = marks;
  }

  get RegistrationNum {
    return registNumber;
  }

  set RegistrationNum(int num) {
    this.registNumber = num;
  }

  get fullName {
    return Name;
  }

  set fullName(String name) {
    this.fullName = name;
  }

  List<double> getMarks() {
    return marks;
  }

  @override
  String toString() {
    return "ID: $registNumber\nFull Name: $fullName\n";
  }
}

class Courses {
  String? courseName;
  int? mark;
}
