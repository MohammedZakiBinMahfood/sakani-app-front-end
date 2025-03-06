import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_card_item.dart';
import '../../../../../core/widgets/custom_delete_dialog.dart';
import '../../../../../core/widgets/custom_details_dialog.dart';
import '../edit_block_page.dart';

class CustomBlockItem extends StatelessWidget {
  final int blockIndex;

  const CustomBlockItem({super.key, required this.blockIndex});

  @override
  Widget build(BuildContext context) {
    return CustomCardItem(
      title: "Block: ${blockIndex + 1}",
      subtitle:
          "Location: Zone ${blockIndex + 1}\nNumber of Wings: ${2 + blockIndex}",
      onTap: () {
        showDetailsDialog(
          context,
          "Block Details",
          {
            "Block": blockIndex + 1,
            "Location": "Zone ${blockIndex + 1}",
            "Number of Wings": 2 + blockIndex,
          },
        );
      },
      onEditPressed: () {
        Navigator.pushNamed(context, EditBlockPage.id);
      },
      onDeletePressed: () {
        showDeleteDialog(context, "Block", () {
          // تنفيذ عملية الحذف للبلوك
        });
      },
    );
  }
}
