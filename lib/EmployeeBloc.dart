// import
import 'dart:async';
import "Employee.dart";

class EmployeeBloc {
  //sink to add in
  //stream to get data

  //List of Employee
  List<Employee> _employeeList = [
    Employee(1,"Vishal",1000),
    Employee(2,"Rohit",2000),
  ];

  final _employeeListStreamController = StreamController<List<Employee>>()

  //for inc and dec

 final _employeeSalaryIncStreamController = StreamController<Employee>();

 final _employeeSalaryDecStreamController = StreamController<Employee>();

 // getter
 Stream<List<Employee>> get employeeListStream =>
     _employeeListStreamController.stream;

 StreamSink<List<Employee>> get employeeListSink =>
     _employeeListStreamController.sink;

 StreamSink<Employee> get employeeSalaryInc =>
     _employeeSalaryIncStreamController.sink;

 StreamSink<Employee> get employeeSalaryDec =>
     _employeeSalaryDecStreamController.sink;


 EmployeeBloc(){
   _employeeListStreamController.add(_employeeList);
   

 }
}