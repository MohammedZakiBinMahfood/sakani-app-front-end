import 'package:flutter/material.dart';
import 'room_item.dart';

class RoomsListView extends StatelessWidget {
  const RoomsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return CustomRoomItem(roomIndex: index);
      },
    );
  }
}
