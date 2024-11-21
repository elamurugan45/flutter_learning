// lib/bloc/employee_event.dart
abstract class EmployeeEvent {}

class LikeEmployee extends EmployeeEvent {
  final int index;
  LikeEmployee(this.index);
}

class DislikeEmployee extends EmployeeEvent {
  final int index;
  DislikeEmployee(this.index);
}
