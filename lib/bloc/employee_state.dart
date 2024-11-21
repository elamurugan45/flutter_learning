// lib/bloc/employee_state.dart
import 'employee.dart';

abstract class EmployeeState {}

class EmployeeListState extends EmployeeState {
  final List<Employee> employees;
  EmployeeListState(this.employees);
}
