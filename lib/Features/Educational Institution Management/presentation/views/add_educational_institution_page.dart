import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/add_educational_institution_form.dart';

class AddEducationalInstitutionPage extends StatelessWidget {
  const AddEducationalInstitutionPage({super.key});

  static String id = 'AddEducationalInstitutionPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Add Educational Institution'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: AddEducationalInstitutionForm(),
        ),
      ),
    );
  }
}
