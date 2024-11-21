import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/employee_bloc.dart';
import 'bloc/employee_event.dart';
import 'bloc/employee_state.dart';
import 'bloc/employee.dart';

void main() {
  runApp(EmployeeApp());
}

class EmployeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => EmployeeBloc()..add(LikeEmployee(0)),
        child: EmployeeList(),
      ),
    );
  }
}

class EmployeeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: BlocBuilder<EmployeeBloc, EmployeeState>(
        builder: (context, state) {
          if (state is EmployeeListState) {
            return ListView.builder(
              itemCount: state.employees.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(state.employees[index].name),
                    subtitle: Text('Salary: \$${state.employees[index].salary}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {
                            context.read<EmployeeBloc>().add(LikeEmployee(index));
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_down),
                          onPressed: () {
                            context.read<EmployeeBloc>().add(DislikeEmployee(index));
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
