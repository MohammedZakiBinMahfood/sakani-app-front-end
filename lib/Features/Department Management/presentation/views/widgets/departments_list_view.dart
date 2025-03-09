import 'package:flutter/material.dart';
import 'department_item.dart';

class DepartmentsListView extends StatelessWidget {
  const DepartmentsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomDepartmentItem(departmentIndex: index);
      },
    );
  }
}
