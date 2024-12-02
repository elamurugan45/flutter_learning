// lib/bloc/employee_state.dart
import 'student.dart';

abstract class StudentState {}

class StudentListState extends StudentState {
  final List<Student> students;
  StudentListState(this.students);
}
