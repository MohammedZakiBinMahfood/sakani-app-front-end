import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_card_item.dart';
import '../../../../../core/widgets/custom_delete_dialog.dart';
import '../../../../../core/widgets/custom_details_dialog.dart';
import '../edit_room_page.dart';

class CustomRoomItem extends StatelessWidget {
  final int roomIndex;

  const CustomRoomItem({super.key, required this.roomIndex});

  @override
  Widget build(BuildContext context) {
    return CustomCardItem(
      title: "Room Name: ${roomIndex + 1}",
      subtitle: "Capacity: Zone ${roomIndex + 1}",
      onTap: () {
        showDetailsDialog(
          context,
          "Room Details",
          {
            "Room Name": roomIndex + 1,
            "Capacity": "Zone ${roomIndex + 1}",
          },
        );
      },
      onEditPressed: () {
        Navigator.pushNamed(context, EditRoomPage.id);
      },
      onDeletePressed: () {
        showDeleteDialog(context, "Room", () {
          // تنفيذ عملية الحذف للغرفة
        });
      },
    );
  }
}
