import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_view.dart';
import '../../../../core/widgets/custom_search_field.dart';
import 'add_department_page.dart';
import 'widgets/departments_list_view.dart';

class ViewDepartmentsPage extends StatefulWidget {
  const ViewDepartmentsPage({super.key});

  static String id = 'ViewDepartmentPage';

  @override
  State<ViewDepartmentsPage> createState() => _ViewDepartmentsPageState();
}

class _ViewDepartmentsPageState extends State<ViewDepartmentsPage> {
  String? search;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBarView(
          title: 'View Departments',
          onActionPressed: () {
            Navigator.pushNamed(context, AddDepartmentPage.id);
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              CustomSearchField(
                onChanged: (value) {
                  search = value;
                  //code search operation here
                },
                labelText: "Search Department",
                hintText: "Enter Department Name",
              ),
              const SizedBox(height: 10),
              const Expanded(child: DepartmentsListView()),
            ],
          ),
        ),
      ),
    );
  }
}
