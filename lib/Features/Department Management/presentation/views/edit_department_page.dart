import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/edit_department_form.dart';

class EditDepartmentPage extends StatelessWidget {
  const EditDepartmentPage({super.key});

  static String id = 'EditDepartmentPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Edit Department'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: EditDepartmentForm(),
        ),
      ),
    );
  }
}
