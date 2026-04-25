// class Task {
//   final String name ;
//   bool isdone ;
//   Task({required this.name,this.isdone = false});
//
//   void DoneChanged (){
//     isdone = !isdone;
//   }
// }
import 'dart:convert';

class Task {
  final String name;
  bool isdone;

  Task({required this.name, this.isdone = false});

  void DoneChanged() {
    isdone = !isdone;
  }

  // وظيفة لتحويل الكائن إلى Map (عشان نعرف نحفظه)
  Map<String, dynamic> toMap() {
    return {'name': name, 'isdone': isdone};
  }

  // وظيفة لتحويل الـ Map لكائن Task (عشان لما نقرأه من الذاكرة)
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(name: map['name'], isdone: map['isdone']);
  }
}