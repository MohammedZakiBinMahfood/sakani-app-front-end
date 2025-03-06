import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/edit_educational_institution_form.dart';

class EditEducationalInstitutionPage extends StatelessWidget {
  const EditEducationalInstitutionPage({super.key});

  static String id = 'EditEducationalInstitutionPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Edit Educational Institution'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: EditEducationalInstitutionFormForm(),
        ),
      ),
    );
  }
}
