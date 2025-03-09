import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/add_department_form.dart';

class AddDepartmentPage extends StatelessWidget {
  const AddDepartmentPage({super.key});

  static String id = 'AddDepartmentPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Add Department'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: AddDepartmentForm(),
        ),
      ),
    );
  }
}
