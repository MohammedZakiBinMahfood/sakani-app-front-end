import 'package:flutter/material.dart';

import 'educational_institution_item.dart';

class EducationalInstitutionListView extends StatelessWidget {
  const EducationalInstitutionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomEducationalInstitutionItem(
            educationalInstitutionIndex: index);
      },
    );
  }
}
