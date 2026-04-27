import 'dart:convert';

class Task {
  final String name;
  bool isdone;

  Task({required this.name, this.isdone = false});

  void DoneChanged() {
    isdone = !isdone;
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'isdone': isdone};
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(name: map['name'], isdone: map['isdone']);
  }
}
