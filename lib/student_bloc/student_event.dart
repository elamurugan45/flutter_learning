// lib/bloc/employee_event.dart
abstract class StudentEvent {}

class LikeStudent extends StudentEvent {
  final int index;
  LikeStudent(this.index);
}

class DislikeStudent extends StudentEvent {
  final int index;
  DislikeStudent(this.index);
}
