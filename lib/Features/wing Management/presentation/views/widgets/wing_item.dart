import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_card_item.dart';
import '../../../../../core/widgets/custom_delete_dialog.dart';
import '../../../../../core/widgets/custom_details_dialog.dart';
import '../edit_wing_page.dart';

class CustomWingItem extends StatelessWidget {
  final int wingIndex;

  const CustomWingItem({super.key, required this.wingIndex});

  @override
  Widget build(BuildContext context) {
    return CustomCardItem(
      title: "Wing: ${wingIndex + 1}",
      subtitle:
          "Number of Rooms: Zone ${wingIndex + 1}\nFloor: ${2 + wingIndex}",
      onTap: () {
        showDetailsDialog(
          context,
          "Wing Details",
          {
            "Wing": wingIndex + 1,
            "Number of Rooms": "Zone ${wingIndex + 1}",
            "Floor": 2 + wingIndex,
          },
        );
      },
      onEditPressed: () {
        Navigator.pushNamed(context, EditWingPage.id);
      },
      onDeletePressed: () {
        showDeleteDialog(context, "Wing", () {
          // تنفيذ عملية الحذف للجناح
        });
      },
    );
  }
}
