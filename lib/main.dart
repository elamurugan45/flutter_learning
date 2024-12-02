import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_frist_project/pages/home.dart';
import 'bloc/employee_bloc.dart';
import 'bloc/employee_event.dart';
import 'bloc/employee_state.dart';
import 'student_bloc/student_bloc.dart';
import 'student_bloc/student_event.dart';
import 'student_bloc/student_state.dart';

void main() {
  // runApp(EmployeeStudentApp());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false, 
    home: HomePage());
  }
}
// class EmployeeStudentApp extends StatelessWidget {
//   const EmployeeStudentApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (_) => EmployeeBloc()),
//         BlocProvider(create: (_) => StudentBloc()),
//       ],
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         // home: EmployeeStudentTabs(),
//         home: HomePage()
//       ),
//     );
//   }
// }

// class EmployeeStudentTabs extends StatelessWidget {
//   const EmployeeStudentTabs({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Employee and Student List'),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: 'Students'),
//               Tab(text: 'Employees'),
//               Tab(text: 'Settings'),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             StudentList(),
//             EmployeeList(),
//             const Center(child: Text('Settings Page')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class EmployeeList extends StatelessWidget {
//   const EmployeeList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<EmployeeBloc, EmployeeState>(
//       builder: (context, state) {
//         if (state is EmployeeListState) {
//           return ListView.builder(
//             itemCount: state.employees.length,
//             itemBuilder: (context, index) {
//               return Card(
//                 margin: const EdgeInsets.all(10),
//                 child: ListTile(
//                   title: Text(state.employees[index].name),
//                   subtitle: Text(
//                       'Salary: \$${state.employees[index].salary.toStringAsFixed(2)}'),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.thumb_up),
//                         onPressed: () {
//                           context.read<EmployeeBloc>().add(LikeEmployee(index));
//                         },
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.thumb_down),
//                         onPressed: () {
//                           context
//                               .read<EmployeeBloc>()
//                               .add(DislikeEmployee(index));
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         }
//         return const Center(child: CircularProgressIndicator());
//       },
//     );
//   }
// }

// class StudentList extends StatelessWidget {
//   const StudentList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<StudentBloc, StudentState>(
//       builder: (context, state) {
//         if (state is StudentListState) {
//           return ListView.builder(
//             itemCount: state.students.length,
//             itemBuilder: (context, index) {
//               return Card(
//                 margin: const EdgeInsets.all(10),
//                 child: ListTile(
//                   title: Text(state.students[index].name),
//                   subtitle: Text(
//                       'Marks: ${state.students[index].marks.toStringAsFixed(1)}'),
//                   trailing: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.thumb_up),
//                         onPressed: () {
//                           context.read<StudentBloc>().add(LikeStudent(index));
//                         },
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.thumb_down),
//                         onPressed: () {
//                           context
//                               .read<StudentBloc>()
//                               .add(DislikeStudent(index));
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         }
//         return const Center(child: CircularProgressIndicator());
//       },
//     );
//   }
// }
