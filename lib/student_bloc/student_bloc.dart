// lib/bloc/employee_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'student_event.dart';
import 'student_state.dart';
import 'student.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  List<Student> students = [
    Student(name: 'Ian Gallagher', marks: 81),
    Student(name: 'Carl Gallagher', marks: 99),
    Student(name: 'Liam Gallagher', marks: 81),
  ];

  StudentBloc() : super(StudentListState([])) {
    on<LikeStudent>((event, emit) {
      students[event.index].marks += 9;
      emit(StudentListState(List.from(students)));
    });

    on<DislikeStudent>((event, emit) {
      students[event.index].marks -= 9;
      emit(StudentListState(List.from(students)));
    });
    
    emit(StudentListState(List.from(students)));
  }
}
