import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_card_item.dart';
import '../../../../../core/widgets/custom_delete_dialog.dart';
import '../../../../../core/widgets/custom_details_dialog.dart';
import '../edit_educational_institution_page.dart';

class CustomEducationalInstitutionItem extends StatelessWidget {
  final int educationalInstitutionIndex;

  const CustomEducationalInstitutionItem(
      {super.key, required this.educationalInstitutionIndex});

  @override
  Widget build(BuildContext context) {
    return CustomCardItem(
      title: "Educational Institution Name: ${educationalInstitutionIndex + 1}",
      subtitle:
          "Location: Zone ${educationalInstitutionIndex + 1}\nType: ${2 + educationalInstitutionIndex}",
      onTap: () {
        showDetailsDialog(
          context,
          "Educational Institution Details",
          {
            "Educational Institution Name": educationalInstitutionIndex + 1,
            "Location": "Zone ${educationalInstitutionIndex + 1}",
            "Type": 2 + educationalInstitutionIndex,
          },
        );
      },
      onEditPressed: () {
        Navigator.pushNamed(context, EditEducationalInstitutionPage.id);
      },
      onDeletePressed: () {
        showDeleteDialog(context, "Educational Institution", () {
          // تنفيذ عملية الحذف للمؤسسة التعليمية
        });
      },
    );
  }
}
