import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_card_item.dart';
import '../../../../../core/widgets/custom_delete_dialog.dart';
import '../../../../../core/widgets/custom_details_dialog.dart';
import '../edit_department_page.dart';

class CustomDepartmentItem extends StatelessWidget {
  final int departmentIndex;

  const CustomDepartmentItem({super.key, required this.departmentIndex});

  @override
  Widget build(BuildContext context) {
    return CustomCardItem(
      title: "Department: ${departmentIndex + 1}",
      subtitle: "Department Details",
      onTap: () {
        showDetailsDialog(
          context,
          "Department Details",
          {
            "Department": departmentIndex + 1,
          },
        );
      },
      onEditPressed: () {
        Navigator.pushNamed(context, EditDepartmentPage.id);
      },
      onDeletePressed: () {
        showDeleteDialog(context, "Department", () {
          // تنفيذ عملية الحذف للقسم
        });
      },
    );
  }
}
