// lib/bloc/employee_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'employee_event.dart';
import 'employee_state.dart';
import 'employee.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  List<Employee> employees = [
    Employee(name: 'Frank Gallagher', salary: 5000),
    Employee(name: 'Philip Gallagher', salary: 6000),
    Employee(name: 'Fiano Gallagher', salary: 7000),
  ];

  EmployeeBloc() : super(EmployeeListState([])) {
    on<LikeEmployee>((event, emit) {
      employees[event.index].salary += 500;
      emit(EmployeeListState(List.from(employees)));
    });

    on<DislikeEmployee>((event, emit) {
      employees[event.index].salary -= 500;
      emit(EmployeeListState(List.from(employees)));
    });
    emit(EmployeeListState(List.from(employees)));
  }
}
